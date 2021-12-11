if (playerNear) {
	instance_destroy()
	obj_UI_controller.quest_title = "Axellent idea"
	obj_UI_controller.quest_body = "- That worked!\nThat axe in the corner may come in handy"
									
} else if (playerNearNoTool) {
	//player interact sound here
		count = 0
	for (var i = 0; i < array_length_1d(obj_game_controller.voicelines); i++) {
		if audio_is_playing(obj_game_controller.voicelines[i]) {
			count++
		}
	}
	
	 if count == 0 then audio_play_sound(sfx_bookcase_vl, 1, 0)
}