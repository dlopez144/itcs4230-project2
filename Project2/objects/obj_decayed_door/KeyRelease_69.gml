/// @description Destroy door
if (playerNear) {
	//obj_UI_controller.quest_title = "Suspicious bookcase"
	//obj_UI_controller.quest_body = "- One of those books may reveal a secrete passage.\nQuestion is, which one?"
	audio_play_sound(sfx_axe_used, 1, 0)
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here
	sound_overlap_check()
	
	audio_play_sound_at(sfx_decayed_door_vl, x, y, 0, 100, 300, 1, 0, 1)
}