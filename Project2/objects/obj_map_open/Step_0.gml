if (keyboard_check_pressed(ord("M"))) {
	if (hasMap) {
		showMap = !showMap
	}
	
	if (showMap) {
		//view_visible[1] = true
		obj_light_source.draw_map = true
		instance_deactivate_region(0, 0, 1920, 1080, true, true)
	} else {
		view_visible[1] = false
		obj_light_source.draw_map = false
		instance_activate_all()
	}
	
}




