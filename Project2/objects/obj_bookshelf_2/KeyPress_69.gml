if (playerNear) {
	obj_UI_controller.quest_title = "Run!"
	obj_UI_controller.quest_body = "- Theres something in the dark, and its comming right for you!"
	obj_game_controller.bookShelf2Opened = true;
	instance_destroy()
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