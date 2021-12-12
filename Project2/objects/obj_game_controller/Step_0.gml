/// @description Checks players health, restarts if dead
if (instance_exists(obj_UI_controller)) {
	if (obj_UI_controller.player_hp <= 0 and !game_over) {
		obj_player.state = player_state.dying
		//game_over = true
		audio_stop_all()
		audio_play_sound(sfx_music, 1, 1)
		//instance_deactivate_object(obj_player)
	}
}
