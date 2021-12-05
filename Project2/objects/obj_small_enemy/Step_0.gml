/// @desc Movement

if (instance_exists(obj_player)) {
	//checks if player is near
	if (distance_to_object(obj_player) < aggro_range) {
		aggroed = true;
		returningToSpawn = false
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

if	enemy_hp <= 0 {
	// TODO: play death anim
	instance_destroy() // temp destroy call until a death anim is made
	//alarm[2] = 30 // however long the death anim is, destroy the instance there
	// or could just play the death anim and destroy the instance in the animation end event
}

if (enemy_hp < maxHP) {
	draw_health_bar = true
} else {
	draw_health_bar = false
}

if (!place_meeting(x, y, obj_cone)) {
	move_spd = 3
}