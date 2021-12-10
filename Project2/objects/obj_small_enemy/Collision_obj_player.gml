/// @description Deals damage to player when colliding on a cooldown
if (!attacking) {
	obj_UI_controller.player_hp -= attack_dmg
	 audio_play_sound_at(sfx_baby_attack, x, y, 0, 100, 300, 1, 0, 1)
	alarm[1] = attack_cooldown
	attacking = true
	 audio_play_sound_at(sfx_player_hit, other.x, other.y, 0, 100, 300, 1, 0, 1)
}