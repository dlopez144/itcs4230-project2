/// @desc Movement

if (instance_exists(obj_boss_break_target)) {
	if (event_started) {
		//steps towards target, avoiding obj_block
		mp_potential_step_object(obj_boss_break_target.x, obj_boss_break_target.y, move_spd, obj_block)
	}
}


