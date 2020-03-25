namespace :ffi do
  desc 'Generate ffi interface'
  task :generate do
    `swig -xml -o libevdev_wrap.xml -I/usr/include swig/libevdev.i`

    `ffi-gen libevdev_wrap.xml libevdev.rb`

    `cat libevdev.rb | sed -e 's/LIBEVDEV_//g' | sed -e 's/va_list/:pointer/g' > lib/libevdev/generated/libevdev.rb`

    `rm -f libevdev_wrap.xml libevdev.rb`
  end
end