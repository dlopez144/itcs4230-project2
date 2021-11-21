/// @description Checks if player is near
if (instance_exists(obj_player)) {
	//checks if player is near
	if (distance_to_object(obj_player) > detection_range) {
		if (obj_game_controller.hasAxe) {
			playerNear = true;
		}
	} else if (obj_game_controller.hasAxe) {
		playerNear = false;
	}		
}
