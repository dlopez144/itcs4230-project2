/// @description Checks for player, fuel, and matches

if (obj_game_controller.hasFuel and obj_game_controller.hasMatches) {
	if instance_exists(obj_boss_break) {
		obj_boss_break.event_started = true
	}
}
