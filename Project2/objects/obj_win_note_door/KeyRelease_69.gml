/// @description open door
if (playerNear) {
	//obj_UI_controller.quest_title = "temp"
	//obj_UI_controller.quest_body = "- temp"
	 audio_play_sound_at(sfx_door_open, x, y, 0, 100, 300, 1, 0, 1)
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here
}