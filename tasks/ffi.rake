namespace :ffi do
  desc 'Generate ffi interface'
  task :generate do
    `swig -xml -o libevdev_wrap.xml -I/usr/include swig/libevdev.i`

    `ffi-gen libevdev_wrap.xml lib/libevdev/generated/libevdev.rb`

    # simpler method and constant naming
    `sed -i 's/LIBEVDEV_//g' lib/libevdev/generated/libevdev.rb`

    # manual adjustments
    `sed -i 's/va_list/:pointer/g' lib/libevdev/generated/libevdev.rb`

    `rm -f libevdev_wrap.xml`
  end
end