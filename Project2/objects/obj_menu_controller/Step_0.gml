/// @description Insert description here
// You can write your code in this editor

if i == 0 and collision_point(mouse_x, mouse_y, obj_menu_marker_1, false, true) {
	show_debug_message("hoverin 1")
	mouse_next_1 = true
	
} else {
	mouse_next_1 = false
}

if i == 1 and collision_point(mouse_x, mouse_y, obj_menu_marker_2, false, true) {
	show_debug_message("hoverin 2")
	mouse_next_1 = false
	mouse_next_2 = true
} else {mouse_next_2 = false}


layer_id = layer_get_id("Background")
back_id = layer_background_get_id(layer_id)



switch(i) {
	case 0:
		layer_background_sprite(back_id, spr_menu_background_1)
		if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_right) or (mouse_next_1 and mouse_check_button_pressed(mb_left)) {
			i = 1
		}
	break
	case 1:
		layer_background_sprite(back_id, spr_menu_background_2)
		if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_right) or (mouse_next_2 and mouse_check_button_pressed(mb_left)) {
			room_goto_next()
		}
	break
}
