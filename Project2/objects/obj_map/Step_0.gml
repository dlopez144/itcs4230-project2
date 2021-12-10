if (place_meeting(x, y, obj_player)) {
	//visible = false
	showText = true
	obj_map_open.hasMap = true
	audio_play_sound(sfx_map_vl, 1, 0)
}