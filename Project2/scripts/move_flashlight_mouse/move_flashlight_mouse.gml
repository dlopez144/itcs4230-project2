// mouse controls for the cone obj
if instance_exists(obj_player) {
	if !instance_exists(obj_cone) then instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_cone)
	switch (facing) {
		case 0:
			if mouse_y < obj_player.y then obj_cone.image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90
			obj_cone.image_angle = clamp(obj_cone.image_angle, -90, 90)
		break
		case 1:
			if mouse_y > obj_player.y then obj_cone.image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90
			obj_cone.image_angle = clamp(obj_cone.image_angle, 90, 270)
			show_debug_message(obj_cone.image_angle)

		break
		case 2: // bug found; fix later
			if mouse_x > obj_player.x then obj_cone.image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90
			//if ((-90 <= obj_cone.image_angle and obj_cone.image_angle <= 0) or (180 <= obj_cone.image_angle and obj_cone.image_angle = 270)) {
			//	if mouse_x < x {
			//		obj_cone.image_angle = 0
			//	} else if mouse_y > y {
			//		obj_cone.image_angle = 180
			//	}
			//}
			
			if obj_cone.image_angle < 90 and obj_cone.image_angle > 0 then obj_cone.image_angle = 0
			if obj_cone.image_angle >= 90 and obj_cone.image_angle < 180 then obj_cone.image_angle = 180
			show_debug_message(obj_cone.image_angle)
		break
		case 3:
			if mouse_x < obj_player.x then obj_cone.image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) - 90
			obj_cone.image_angle = clamp(obj_cone.image_angle, 0, 180)
		break
	}
	
	object_set_visible(obj_cone, 1)
	
	
	if keyboard_check_released(ord("F")) {
		state = player_state.actionable
		instance_destroy(obj_cone) // can use obj here instead of id since there's only 1

	}
}