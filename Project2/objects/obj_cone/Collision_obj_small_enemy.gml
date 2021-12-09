

// hurting enemy if nothing whenever there isn't a solid between the player and this enemy instance
if instance_exists(obj_player) {
	if collision_line(obj_player.x, obj_player.y, other.x, other.y, obj_solid, false, true) == noone {
		other.enemy_hp -= light_damage
		other.move_spd = 1.5
	}
}
