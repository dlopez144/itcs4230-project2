/// @desc Movement

if (instance_exists(obj_player)) {
	//checks if player is near
	if (distance_to_object(obj_player) < aggro_range) {
		aggroed = true;
		returningToSpawn = false
		//steps towards player, avoiding obj_block
		mp_potential_step_object(obj_player.x, obj_player.y, move_spd, obj_block)
		sprite_index = spr_small_enemy_hor
		if (obj_player.x < x) {
			image_xscale = -1
		} else {
			image_xscale = 1
		}
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
		sprite_index = spr_small_enemy;
	}
}

if	enemy_hp <= 0 {
	// TODO: play death anim
	instance_destroy() // temp destroy call until a death anim is made
	//alarm[2] = 30 // however long the death anim is, destroy the instance there
	// or could just play the death anim and destroy the instance in the animation end event
}

if instance_exists(obj_cone) {
		if (enemy_hp < maxHP) {
		draw_health_bar = true
		} else {
		draw_health_bar = false
		}	
}

//reset move speed when not in light
if (!place_meeting(x, y, obj_cone)) {
	move_spd = 3
}