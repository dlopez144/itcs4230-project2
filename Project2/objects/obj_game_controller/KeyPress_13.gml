/// @description Go to next level
//disables everything when finishing last level
if (room_get_name(room) == finalLevel) {
	hasAxe = false
	hasBookNote1 = false
	hasBookNote2 = false
	hasKey1 = false
	obj_map_open.hasMap = false
	obj_UI_controller.quest_title = ""
	obj_UI_controller.quest_body = ""
	instance_deactivate_all(true)
	
}

if (levelComplete = true) {
	levelComplete = false
	audio_play_sound(sfx_music, 1, 1)
	room_goto_next()
}
