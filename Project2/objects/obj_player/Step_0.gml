
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

if vsp != 0 or hsp != 0 {
	//audio_play_sound_at(sfx_player_walk, x, y, 0, 0, 0, 0, 0, 1)
	if walksound {
		walksound = false
		alarm[1] = 40
		audio_play_sound_at(sfx_player_walk, x, y, 0, 100, 300, 1, 0, 1)
	}
}