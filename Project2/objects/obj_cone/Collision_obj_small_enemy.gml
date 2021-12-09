solids = [obj_block, obj_barricaded_door, obj_bookshelf_1, obj_bookshelf_2, obj_cracked_wall, obj_decayed_door, obj_final_door1, obj_final_door2, obj_win_note_door]
collisions = 0

// increase collisions whenever there's a solid between the player and this enemy instance
for (var i = 0; i < 9; i++) {
	if collision_line(obj_player.x, obj_player.y, other.x, other.y, solids[i], false, true) != noone {
		collisions++
		break
	}
}

// hurting enemy if nothing is between it and the player
if collisions == 0 {
	other.enemy_hp -= light_damage
	other.move_spd = 1.5
}