// creates cone obj and clamps its direction based on keyboard input
if instance_exists(obj_player) {
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_cone)
	obj_UI_controller.battery_charge -= battery_dec_rate
	switch (facing) {
		case 0:
			obj_cone.image_angle = clamp(obj_cone.image_angle, -90, 90)
		break
		case 1:
			obj_cone.image_angle = clamp(obj_cone.image_angle, 90, 270)
			show_debug_message(obj_cone.image_angle)

		break
		case 2:
			show_debug_message(obj_cone.image_angle)
			obj_cone.image_angle = clamp(obj_cone.image_angle, 180, 360)
		break
		case 3:
			obj_cone.image_angle = clamp(obj_cone.image_angle, 0, 180)
		break
	}
	
	// recently commented out
	//object_set_visible(obj_cone, 1)
	move_flashlight()

	
	
	if keyboard_check_released(ord("F")) or obj_UI_controller.battery_charge <= 0 {
		audio_play_sound_at(sfx_flashlight, x, y, 0, 100, 300, 1, 0, 1)
		state = player_state.actionable
		instance_destroy(obj_cone) // can use obj here instead of id since there's only 1

	}
}