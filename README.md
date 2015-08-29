# Libevdev

A 1:1 FFI wrapper around [libevdev](http://www.freedesktop.org/software/libevdev/doc/1.4.3/libevdev_8h.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'libevdev'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install libevdev

## Usage

```ruby
require 'libevdev'
```

All libevdev constants and methods are available under the Libevdev namespace.
The `LIBEVDEV_` and `libevdev_` prefixes of the C API have been dropped.
Besides that, all names were left unchanged.

### Accessing constants

```ruby
Libevdev::READ_FLAG_SYNC
Libevdev::GRAB
Libevdev::READ_STATUS_SUCCESS
# an so on …
```

### Initializing a new libevdev device

```ruby
file = File.open('/dev/input/event0')

# pointer to the pointer of the to be created libevdev struct
evdev_ptr = FFI::MemoryPointer.new :pointer

Libevdev.new_from_fd(file.fileno, evdev_ptr)

# get the pointer to the actual opaque libevdev struct
evdev = evdev_ptr.read_pointer
```

### Listening to events

Libevdev also loads the [LinuxInput](https://github.com/christopheraue/ruby-linux_input)
gem for its structs and constants.

```ruby
event = LinuxInput::InputEvent.new
loop do
    Libevdev.next_event(evdev, Libevdev::READ_FLAG_NORMAL, event.pointer)
    puts event[:type]
    puts event[:code]
    puts event[:value]
end
```

### Freeing the device

```ruby
Libevdev.free(evdev)
```