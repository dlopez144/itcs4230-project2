/// @description Checks players health, restarts if dead
if (instance_exists(obj_UI_controller)) {
	if (obj_UI_controller.player_hp <= 0 and !game_over) {
		game_over = true
	}
}
