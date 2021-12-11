/*
* Checks if there's a voiceline playing
* If there is one, it stops playing
*/
function sound_overlap_check(){
		for (var i = 0; i < array_length_1d(obj_game_controller.voicelines); i++) {
			if audio_is_playing(obj_game_controller.voicelines[i]) {
				audio_stop_sound(obj_game_controller.voicelines[i])
		}
	}
}