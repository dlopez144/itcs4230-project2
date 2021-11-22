
flashlight = keyboard_check(ord("F"))

if state == player_state.actionable { // movement and things that don't pause the player
	
	// flashlight input handled before any directional inputs; to make it stop the player from moving
	if flashlight {
		state = player_state.unactionable
	}
	
	
	// at any given frame, the current directional input is added to the input stack
	var curr_key = keyboard_key
	for (var i = 0; i < 4; i++) {
		if curr_key == inputs[i] {
			ds_stack_push(input_stack, curr_key)
		}
	}
	
	
	if ds_stack_empty(input_stack) { // empty input stack means nothing is being pressed
		hsp = 0
		vsp = 0
		
		// TODO: handle idle anims here
	}
	
	while not ds_stack_empty(input_stack) and ds_stack_size(input_stack) <= 2 { // only handling a max # of two overlapping inputs at a time
		//show_debug_message(ds_stack_top(input_stack))
		switch(ds_stack_pop(input_stack)) { // input priority goes to the last input performed
			case up:
				show_debug_message("in up")
				facing = 0
				sprite_index = spr_player_move_up
				hsp = 0 // no diagonal movement for now
				vsp = -ver_speed
			break
			case right:
				show_debug_message("in right")
				facing = 2
				sprite_index = spr_player_hmove
				vsp = 0
				hsp = hor_speed
			break
			case down:
				show_debug_message("in down")
				facing = 1
				sprite_index = spr_player_move_down
				hsp = 0
				vsp = ver_speed
			break
			case left:
				facing = 3
				sprite_index = spr_player_hmove
				show_debug_message("in left")
				vsp = 0
				hsp = -hor_speed
			break
		}
	} 
		
	//ds_stack_clear(input_stack)
	
} else if state == player_state.unactionable { // no moving
	//move_flashlight_mouse()
	control_flashlight() // keyboard controls for the flashlight
}


// basic collision
if !instance_place(x, y + sign(vsp), obj_block) {
	if vsp < 0 {
		if !instance_place(x, y + vsp, obj_decayed_door) and !instance_place(x, y + vsp, obj_bookshelf_1) and !instance_place(x, y + vsp, obj_bookshelf_2) {
			y += vsp
		}
	} else if !instance_place(x, y + vsp, obj_decayed_door) and !instance_place(x, y + vsp, obj_bookshelf_1) and !instance_place(x, y + vsp, obj_bookshelf_2) {
		y += vsp
	}
	
}

if !instance_place(x + sign(hsp), y, obj_block){
	if hsp < 0 {
		if !instance_place(x + hsp, y, obj_decayed_door) and !instance_place(x + hsp, y, obj_bookshelf_1) and !instance_place(x + hsp, y, obj_bookshelf_2) {
			x += hsp
		}
	} else if !instance_place(x + hsp, y, obj_decayed_door) and !instance_place(x + hsp, y, obj_bookshelf_1) and !instance_place(x + hsp, y, obj_bookshelf_2) {
		x += hsp
	}
}




//else if state == player_state.unactionable {
//	instance_create_layer(x, y, "Instances", obj_cone)
//	switch (facing) {
//		case 0:
//			if mouse_y < y then obj_cone.image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
//			obj_cone.image_angle = clamp(obj_cone.image_angle, -90, 90)
//		break
//		case 1:
//			if mouse_y > y then obj_cone.image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
//			obj_cone.image_angle = clamp(obj_cone.image_angle, 90, 270)
//			show_debug_message(obj_cone.image_angle)

//		break
//		case 2: // bug found; fix later
//			obj_cone.image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
//			//if ((-90 <= obj_cone.image_angle and obj_cone.image_angle <= 0) or (180 <= obj_cone.image_angle and obj_cone.image_angle = 270)) {
//			//	if mouse_x < x {
//			//		obj_cone.image_angle = 0
//			//	} else if mouse_y > y {
//			//		obj_cone.image_angle = 180
//			//	}
//			//}
//			//show_debug_message(obj_cone.image_angle)
//		break
//		case 3:
//			if mouse_x < x then obj_cone.image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
//			obj_cone.image_angle = clamp(obj_cone.image_angle, 0, 180)
//		break
//	}
	
//	object_set_visible(obj_cone, 1)
	
	
//	if keyboard_check_released(ord("F")) {
//		state = player_state.actionable
//		instance_destroy(obj_cone) // can use obj here instead of id since there's only 1

//	}
//}
