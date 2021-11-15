if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < aggro_range) {
		aggroed = true;
		mp_potential_step_object(obj_player.x, obj_player.y, move_spd, obj_block)
	} else {
		if (aggroed) {
			aggroed = false
			alarm[0] = 30
		}
	}
}

if (returningToSpawn) {
	mp_potential_step_object(spawnX, spawnY, move_spd, obj_block)
	if (distance_to_point(spawnX, spawnY) < 1) {
		returningToSpawn = false
	}
}
