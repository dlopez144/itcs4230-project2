/// @description pry open door
if (playerNear) {
	//obj_UI_controller.quest_title = "temp"
	 audio_play_sound_at(sfx_crowbar_used, x, y, 0, 100, 300, 1, 0, 1)
	//obj_UI_controller.quest_body = "- temp"
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here


	sound_overlap_check()
	audio_play_sound_at(sfx_boarded_vl, x, y, 0, 100, 300, 1, 0, 1)
}