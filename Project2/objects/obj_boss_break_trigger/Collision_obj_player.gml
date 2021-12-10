/// @description Checks for player, fuel, and matches, or 

if (obj_game_controller.hasFuel and obj_game_controller.hasMatches) {
	if instance_exists(obj_boss_break) {
		layer_set_visible("Shake", true)
		obj_boss_break.event_started = true
	}
}

if (obj_game_controller.bookShelf2Opened) {
	if instance_exists(obj_boss_break) {
		layer_set_visible("Shake", true)
		obj_boss_break.event_started = true
		obj_game_controller.bookShelf2Opened = false;
	}
}
