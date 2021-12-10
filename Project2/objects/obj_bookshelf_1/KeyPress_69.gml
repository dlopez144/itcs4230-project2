if (playerNear) {
	instance_destroy()
	obj_UI_controller.quest_title = "Axellent idea"
	obj_UI_controller.quest_body = "- That worked!\nThat axe in the corner may come in handy"
									
} else if (playerNearNoTool) {
	//player interact sound here
	audio_play_sound(sfx_bookcase_vl, 1, 0)
}