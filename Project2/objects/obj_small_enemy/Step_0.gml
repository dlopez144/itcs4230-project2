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
			image_xscale = abs(image_xscale) * -1
		} else {
			image_xscale = abs(image_xscale)
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
		sprite_index = spr_baby_front_idle;
		 audio_play_sound_at(sfx_baby_home, x, y, 0, 100, 300, 1, 0, 1)
	}
}

if	enemy_hp <= 0 {
	 audio_play_sound_at(sfx_baby_death, x, y, 0, 100, 300, 1, 0, 1)
	effect_create_above(ef_smoke, x, y, 2, c_black)
	instance_destroy()
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

if (aggroed or returningToSpawn) {
	if (sound == pointer_null)
	sound = audio_play_sound_at(sfx_baby_walk, x, y, 0, 1, 10, 5, 1, 1)
} else if (sound != pointer_null) {
	audio_stop_sound(sound)	
	sound = pointer_null
}