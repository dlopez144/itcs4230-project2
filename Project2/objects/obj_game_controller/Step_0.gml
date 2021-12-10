/// @description Checks players health, restarts if dead
if (instance_exists(obj_UI_controller)) {
	if (obj_UI_controller.player_hp <= 0 and !game_over) {
		obj_player.state = player_state.dying
		//game_over = true
		
		//instance_deactivate_object(obj_player)
	}
}
