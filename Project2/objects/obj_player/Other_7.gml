/// @description Insert description here
// You can write your code in this editor
if sprite_index == spr_player_death {
	instance_deactivate_object(self)
	obj_game_controller.game_over = true
}