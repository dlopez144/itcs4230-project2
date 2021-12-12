/// @description Checks for player, fuel, and matches, or 

if (obj_game_controller.hasFuel and obj_game_controller.hasMatches and !eventTriggered) {
	layer_set_visible("Shake", true)
	instance_create_layer(1728, 928, layer, obj_boss_break)	
	if (instance_exists(obj_player))
		audio_play_sound_at(sfx_wall_broken_vl, obj_player.x, obj_player.y, 0, 100, 300, 1, 0, 1)
	eventTriggered = true;
}

if (obj_game_controller.bookShelf2Opened) {
	layer_set_visible("Shake", true)
	instance_create_layer(192, 864, layer, obj_boss_break)	
	if (instance_exists(obj_player))
		audio_play_sound_at(sfx_wall_broken_vl, obj_player.x, obj_player.y, 0, 100, 300, 1, 0, 1)
	obj_game_controller.bookShelf2Opened = false
}
