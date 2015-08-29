require 'bundler/setup'
require 'linux_input'

require "libevdev/version"

module Libevdev
  extend FFI::Library

  ffi_lib 'evdev'

  class_eval File.read(File.join(File.dirname(__FILE__), 'libevdev/generated/libevdev.rb'))
end

class << Libevdev
  prefix = 'libevdev_'
  instance_methods(false).each do |method|
    alias_method method[prefix.length..-1], method
  end
end