switch(obj_player.facing) {
	case 1:
		image_angle = 180
	break
	case 2:
		image_angle = 270
	break
	case 3:
		image_angle = 90
	break
}

if instance_exists(obj_player) {
	if obj_player.can_click_sound == true {
		audio_play_sound_at(sfx_flashlight, x, y, 0, 100, 300, 1, 0, 1)
		obj_player.can_click_sound = false
	}
}