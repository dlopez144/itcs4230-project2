/// @desc Movement

if (instance_exists(obj_boss_break_target)) {
	if (event_started) {
		//steps towards target, avoiding obj_block
		mp_potential_step_object(obj_boss_break_target.x, obj_boss_break_target.y, move_spd, obj_block)
	}
}

//reset move speed when not in light
if (!place_meeting(x, y, obj_cone)) {
	move_spd = max_move_spd
}