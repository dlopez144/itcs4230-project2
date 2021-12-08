if (keyboard_check_pressed(ord("M"))) {
	if (hasMap) {
		showMap = !showMap
	}
	if (showMap) {
		view_visible[1] = true
		instance_deactivate_all(true)
	} else {
		view_visible[1] = false
		instance_activate_all()
	}
	
}




