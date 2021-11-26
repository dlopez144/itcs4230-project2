if (place_meeting(x, y, obj_player)) {
	obj_UI_controller.battery_max = obj_UI_controller.battery_charge
	instance_destroy()
}