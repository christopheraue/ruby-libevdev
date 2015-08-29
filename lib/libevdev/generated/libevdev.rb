  READ_FLAG_SYNC = 1
  READ_FLAG_NORMAL = 2
  READ_FLAG_FORCE_SYNC = 4
  READ_FLAG_BLOCKING = 8

  attach_function :libevdev_new, [  ], :pointer
  attach_function :libevdev_new_from_fd, [ :int, :pointer ], :int
  attach_function :libevdev_free, [ :pointer ], :void
  LOG_ERROR = 10
  LOG_INFO = 20
  LOG_DEBUG = 30

  callback(:libevdev_log_func_t, [ :int, :pointer, :string, :int, :string, :string, :pointer ], :void)
  attach_function :libevdev_set_log_function, [ :libevdev_log_func_t, :pointer ], :void
  attach_function :libevdev_set_log_priority, [ :int ], :void
  attach_function :libevdev_get_log_priority, [  ], :int
  callback(:libevdev_device_log_func_t, [ :pointer, :int, :pointer, :string, :int, :string, :string, :pointer ], :void)
  attach_function :libevdev_set_device_log_function, [ :pointer, :libevdev_device_log_func_t, :int, :pointer ], :void
  GRAB = 3
  UNGRAB = 4

  attach_function :libevdev_grab, [ :pointer, :int ], :int
  attach_function :libevdev_set_fd, [ :pointer, :int ], :int
  attach_function :libevdev_change_fd, [ :pointer, :int ], :int
  attach_function :libevdev_get_fd, [ :pointer ], :int
  READ_STATUS_SUCCESS = 0
  READ_STATUS_SYNC = 1

  attach_function :libevdev_next_event, [ :pointer, :uint, :pointer ], :int
  attach_function :libevdev_has_event_pending, [ :pointer ], :int
  attach_function :libevdev_get_name, [ :pointer ], :string
  attach_function :libevdev_set_name, [ :pointer, :string ], :void
  attach_function :libevdev_get_phys, [ :pointer ], :string
  attach_function :libevdev_set_phys, [ :pointer, :string ], :void
  attach_function :libevdev_get_uniq, [ :pointer ], :string
  attach_function :libevdev_set_uniq, [ :pointer, :string ], :void
  attach_function :libevdev_get_id_product, [ :pointer ], :int
  attach_function :libevdev_set_id_product, [ :pointer, :int ], :void
  attach_function :libevdev_get_id_vendor, [ :pointer ], :int
  attach_function :libevdev_set_id_vendor, [ :pointer, :int ], :void
  attach_function :libevdev_get_id_bustype, [ :pointer ], :int
  attach_function :libevdev_set_id_bustype, [ :pointer, :int ], :void
  attach_function :libevdev_get_id_version, [ :pointer ], :int
  attach_function :libevdev_set_id_version, [ :pointer, :int ], :void
  attach_function :libevdev_get_driver_version, [ :pointer ], :int
  attach_function :libevdev_has_property, [ :pointer, :uint ], :int
  attach_function :libevdev_enable_property, [ :pointer, :uint ], :int
  attach_function :libevdev_has_event_type, [ :pointer, :uint ], :int
  attach_function :libevdev_has_event_code, [ :pointer, :uint, :uint ], :int
  attach_function :libevdev_get_abs_minimum, [ :pointer, :uint ], :int
  attach_function :libevdev_get_abs_maximum, [ :pointer, :uint ], :int
  attach_function :libevdev_get_abs_fuzz, [ :pointer, :uint ], :int
  attach_function :libevdev_get_abs_flat, [ :pointer, :uint ], :int
  attach_function :libevdev_get_abs_resolution, [ :pointer, :uint ], :int
  attach_function :libevdev_get_abs_info, [ :pointer, :uint ], :pointer
  attach_function :libevdev_get_event_value, [ :pointer, :uint, :uint ], :int
  attach_function :libevdev_set_event_value, [ :pointer, :uint, :uint, :int ], :int
  attach_function :libevdev_fetch_event_value, [ :pointer, :uint, :uint, :pointer ], :int
  attach_function :libevdev_get_slot_value, [ :pointer, :uint, :uint ], :int
  attach_function :libevdev_set_slot_value, [ :pointer, :uint, :uint, :int ], :int
  attach_function :libevdev_fetch_slot_value, [ :pointer, :uint, :uint, :pointer ], :int
  attach_function :libevdev_get_num_slots, [ :pointer ], :int
  attach_function :libevdev_get_current_slot, [ :pointer ], :int
  attach_function :libevdev_set_abs_minimum, [ :pointer, :uint, :int ], :void
  attach_function :libevdev_set_abs_maximum, [ :pointer, :uint, :int ], :void
  attach_function :libevdev_set_abs_fuzz, [ :pointer, :uint, :int ], :void
  attach_function :libevdev_set_abs_flat, [ :pointer, :uint, :int ], :void
  attach_function :libevdev_set_abs_resolution, [ :pointer, :uint, :int ], :void
  attach_function :libevdev_set_abs_info, [ :pointer, :uint, :pointer ], :void
  attach_function :libevdev_enable_event_type, [ :pointer, :uint ], :int
  attach_function :libevdev_disable_event_type, [ :pointer, :uint ], :int
  attach_function :libevdev_enable_event_code, [ :pointer, :uint, :uint, :pointer ], :int
  attach_function :libevdev_disable_event_code, [ :pointer, :uint, :uint ], :int
  attach_function :libevdev_kernel_set_abs_info, [ :pointer, :uint, :pointer ], :int
  LED_ON = 3
  LED_OFF = 4

  attach_function :libevdev_kernel_set_led_value, [ :pointer, :uint, :int ], :int
  attach_function :libevdev_kernel_set_led_values, [ :pointer, :varargs ], :int
  attach_function :libevdev_set_clock_id, [ :pointer, :int ], :int
  attach_function :libevdev_event_is_type, [ :pointer, :uint ], :int
  attach_function :libevdev_event_is_code, [ :pointer, :uint, :uint ], :int
  attach_function :libevdev_event_type_get_name, [ :uint ], :string
  attach_function :libevdev_event_code_get_name, [ :uint, :uint ], :string
  attach_function :libevdev_property_get_name, [ :uint ], :string
  attach_function :libevdev_event_type_get_max, [ :uint ], :int
  attach_function :libevdev_event_type_from_name, [ :string ], :int
  attach_function :libevdev_event_type_from_name_n, [ :string, :uint ], :int
  attach_function :libevdev_event_code_from_name, [ :uint, :string ], :int
  attach_function :libevdev_event_code_from_name_n, [ :uint, :string, :uint ], :int
  attach_function :libevdev_property_from_name, [ :string ], :int
  attach_function :libevdev_property_from_name_n, [ :string, :uint ], :int
  attach_function :libevdev_get_repeat, [ :pointer, :pointer, :pointer ], :int
