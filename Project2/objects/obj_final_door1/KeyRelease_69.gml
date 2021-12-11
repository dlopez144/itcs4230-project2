/// @description Open door
if (playerNear) {
	obj_UI_controller.quest_title = "Someone, or something is comming!"
	obj_UI_controller.quest_body = "- Go into the basement"
	instance_create_layer(1000, 540, layer, obj_boss_chase)
	 audio_play_sound_at(sfx_unlocked_door_2, x, y, 0, 100, 300, 1, 0, 1)
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here
}