/// @description Insert description here
// You can write your code in this editor
layer_id = layer_get_id("Background")
back_id = layer_background_get_id(layer_id)
if layer_background_get_sprite(back_id) == spr_endscreen {
	if collision_point(mouse_x, mouse_y, obj_menu_marker_1, false, true) and mouse_check_button_pressed(mb_left){
		room_goto(asset_get_index("menu_room"))
	} else if collision_point(mouse_x, mouse_y, obj_menu_marker_2, false, true) and mouse_check_button_pressed(mb_left){
		layer_background_sprite(back_id, spr_credits)
	}
} else if layer_background_get_sprite(back_id) == spr_credits {
	if keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_left) {
		game_end()
	}
}
