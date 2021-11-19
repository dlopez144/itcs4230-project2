/// @desc Movement
if (instance_exists(obj_player)) {
	//checks if player is near
	if (distance_to_object(obj_player) > aggro_range) {
		returningToSpawn = true
	}
}
