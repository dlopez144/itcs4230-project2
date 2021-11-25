if (keyboard_check_pressed(ord("M"))) {
	if (hasMap) {
		showMap = !showMap
	}
	if (showMap) {
		view_visible[1] = true
	} else {
		view_visible[1] = false
	}
}



