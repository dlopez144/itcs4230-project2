
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
		
	}
	

	
	while not ds_stack_empty(input_stack) and ds_stack_size(input_stack) <= 2 { // only handling a max # of two overlapping inputs at a time
		//show_debug_message(ds_stack_top(input_stack))
		switch(ds_stack_pop(input_stack)) { // input priority goes to the last input performed
			case up:
				//show_debug_message("in up")
				facing = 0
				sprite_index = spr_player_run_back
				hsp = 0 // no diagonal movement for now
				vsp = -ver_speed
			break
			case right:
				//show_debug_message("in right")
				facing = 2
				sprite_index = spr_player_run
				image_xscale = abs(image_xscale)
				vsp = 0
				hsp = hor_speed
			break
			case down:
				//show_debug_message("in down")
				facing = 1
				sprite_index = spr_player_run_front
				hsp = 0
				vsp = ver_speed
			break
			case left:
				facing = 3
				image_xscale = abs(image_xscale) * -1
				sprite_index = spr_player_run
				//show_debug_message("in left")
				vsp = 0
				hsp = -hor_speed
			break
		}
	} 
		
	//ds_stack_clear(input_stack)
	
} else if state == player_state.unactionable { // no moving
	//move_flashlight_mouse()
	if instance_exists(obj_UI_controller) and obj_UI_controller.battery_charge > 0 {
		 audio_play_sound_at(sfx_flashlight, x, y, 0, 100, 300, 1, 0, 1)
		control_flashlight() // keyboard controls for the flashlight
	} else {
		state = player_state.actionable
	}
} else if state == player_state.dying {
	hsp = 0
	vsp = 0
	sprite_index = spr_player_death
}


// basic collision
if !place_meeting(x, y + vsp, obj_block) {
	if vsp < 0 {
		if	!place_meeting(x, y + vsp, obj_decayed_door) and
			!place_meeting(x, y + vsp, obj_bookshelf_1) and
			!place_meeting(x, y + vsp, obj_bookshelf_2) and 
			!place_meeting(x, y + vsp, obj_final_door1) and
			!place_meeting(x, y + vsp, obj_win_note_door) and
			!place_meeting(x, y + vsp, obj_barricaded_door) and
			!place_meeting(x, y + vsp, obj_cracked_wall) {
			y += vsp
		}
	} else if	!place_meeting(x, y + vsp, obj_decayed_door) and
				!place_meeting(x, y + vsp, obj_bookshelf_1) and
				!place_meeting(x, y + vsp, obj_bookshelf_2) and
				!place_meeting(x, y + vsp, obj_final_door1) and
				!place_meeting(x, y + vsp, obj_win_note_door) and
				!place_meeting(x, y + vsp, obj_barricaded_door) and
				!place_meeting(x, y + vsp, obj_cracked_wall) {
		y += vsp
	}
	
}

if !instance_place(x + hsp, y, obj_block){
	if hsp < 0 {
		if	!place_meeting(x + hsp, y, obj_decayed_door) and 
			!place_meeting(x + hsp, y, obj_bookshelf_1) and 
			!place_meeting(x + hsp, y, obj_bookshelf_2) and 
			!place_meeting(x + hsp, y, obj_final_door1) and 
			!place_meeting(x + hsp, y, obj_win_note_door) and
			!place_meeting(x + hsp, y, obj_barricaded_door) and
			!place_meeting(x + hsp, y, obj_cracked_wall) {
			x += hsp
		}
	} else if	!place_meeting(x + hsp, y, obj_decayed_door) and 
				!place_meeting(x + hsp, y, obj_bookshelf_1) and 
				!place_meeting(x + hsp, y, obj_bookshelf_2) and 
				!place_meeting(x + hsp, y, obj_final_door1) and 
				!place_meeting(x + hsp, y, obj_win_note_door) and 
				!place_meeting(x + hsp, y, obj_barricaded_door) and 
				!place_meeting(x + hsp, y, obj_cracked_wall) {
		x += hsp
	}
}


// idle animation handling
if hsp == 0 and vsp == 0 and state != player_state.dying {
		switch(facing) {
		case 0:
			sprite_index = spr_player_idle_back
		break
		case 1:
			sprite_index = spr_player_idle_front
		break
		case 2:
			sprite_index = spr_player_idle_side
		break
		case 3:
			sprite_index = spr_player_idle_side
		break
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
