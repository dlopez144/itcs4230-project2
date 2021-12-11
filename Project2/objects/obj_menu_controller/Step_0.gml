/// @description Insert description here
// You can write your code in this editor

if point_in_rectangle(mouse_x, mouse_y, obj_menu_marker_1.bbox_left, obj_menu_marker_1.bbox_bottom, obj_menu_marker_1.bbox_right, obj_menu_marker_1.bbox_top) {
	mouse_next = true
}

if point_in_rectangle(mouse_x, mouse_y, obj_menu_marker_2.bbox_left, obj_menu_marker_2.bbox_bottom, obj_menu_marker_2.bbox_right, obj_menu_marker_2.bbox_top) {
	mouse_prev = true
}

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_right) or (mouse_next and mouse_check_button_pressed(mb_left)) and i < len {
	i ++
	layer_background_sprite(layer_background_get_id(layer_get_id("Instances")), backgrounds[i])
}

if keyboard_check_pressed(vk_backspace) or keyboard_check_pressed(vk_left) or (mouse_prev and mouse_check_button_pressed(mb_left)) and i > 0 {
	i--
	layer_background_sprite(layer_background_get_id(layer_get_id("Instances")), backgrounds[i])
}
