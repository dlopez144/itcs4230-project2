if (playerNearNoTool) {
	//player interact sound here
	count = 0
	for (var i = 0; i < array_length_1d(obj_game_controller.voicelines); i++) {
		if audio_is_playing(obj_game_controller.voicelines[i]) {
			count++
		}
	}
	
	 if count == 0 then audio_play_sound_at(sfx_cracked_wall_vl, x, y, 0, 100, 300, 1, 0, 1)
}
