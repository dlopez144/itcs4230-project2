/// @description Deals damage to player when colliding on a cooldown
if (!attacking) {
	obj_UI_controller.player_hp -= attack_dmg
	alarm[1] = attack_cooldown
	attacking = true
}