/// @description Restart level
if (game_over) {
	obj_UI_controller.player_hp = obj_UI_controller.player_maxHP
	game_over = false
	room_restart()	
} else if (levelComplete) {
	obj_UI_controller.player_hp = obj_UI_controller.player_maxHP
	levelComplete = false
	room_restart()	
}
