if (place_meeting(x, y, obj_player)) {
	obj_UI_controller.battery_charge = obj_UI_controller.battery_max
	instance_destroy()
}