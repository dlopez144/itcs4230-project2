/// @description Checks for player, fuel, and matches, or 

if (obj_game_controller.hasFuel and obj_game_controller.hasMatches) {
	layer_set_visible("Shake", true)
	instance_create_layer(1728, 928, layer, obj_boss_break)	
}

if (obj_game_controller.bookShelf2Opened) {
	layer_set_visible("Shake", true)
	instance_create_layer(192, 864, layer, obj_boss_break)	
	obj_game_controller.bookShelf2Opened = false
}
