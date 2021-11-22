/// @desc Movement

if (instance_exists(obj_player)) {
	//checks if player is near
	if (distance_to_object(obj_player) < aggro_range) {
		aggroed = true;
		//steps towards player, avoiding obj_block
		mp_potential_step_object(obj_player.x, obj_player.y, move_spd, obj_block)
	} else {
		//if player leaves range, pause
		if (aggroed) {
			aggroed = false
			alarm[0] = 30
		}
	}
}
//when alarm rings, start walking back to spawn
if (returningToSpawn) {
	mp_potential_step_object(spawnX, spawnY, move_spd, obj_block)
	if (distance_to_point(spawnX, spawnY) < 1) {
		returningToSpawn = false
	}
}

if dying == true {
	instance_destroy()
	// TODO: play death anim
	alarm[2] = 30 // however long the death anim is
}
