/// @description Restart level
if (global.game_over) {
	room_restart()
	global.game_over = false
} else if (levelComplete) {
	room_restart()
	levelComplete = false
}
