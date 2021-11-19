/// @description Restart level
if (game_over) {
	game_over = false
	room_restart()	
} else if (levelComplete) {
	levelComplete = false
	room_restart()	
}
