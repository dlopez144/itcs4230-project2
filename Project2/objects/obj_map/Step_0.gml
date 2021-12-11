if (place_meeting(x, y, obj_player)) {
	//visible = false
	obj_map_open.showText = true
	obj_map_open.hasMap = true
	audio_play_sound(sfx_map_vl, 1, 0)
	instance_destroy()
}