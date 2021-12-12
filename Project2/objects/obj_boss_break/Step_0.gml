/// @desc Movement

if (instance_exists(obj_boss_break_target)) {
	if (event_started) {
		//steps towards target, avoiding obj_block
		mp_potential_step_object(obj_boss_break_target.x, obj_boss_break_target.y, move_spd, obj_block)
	}
	if (obj_boss_break_target.x > x) {
		image_xscale = abs(image_xscale) * -1
	} else {
		image_xscale = abs(image_xscale)
	}
}
if (event_started and sound == pointer_null) {
	 audio_play_sound_at(sfx_boss_spawn_and_attack, x, y, 0, 100, 300, 1, 0, 1)
	 sound = audio_play_sound_at(sfx_boss_move, x, y, 0, 100, 300, 1, 1, 1)
}
//reset move speed when not in light
if (!place_meeting(x, y, obj_cone)) {
	move_spd = max_move_spd
}