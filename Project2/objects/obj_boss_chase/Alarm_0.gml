/// @description movement
path_delete(path)
path = path_add()
if (instance_exists(obj_player)) {
	mp_grid_path(obj_pathfinding_controller.grid, path, x, y, obj_player.x, obj_player.y, 1)
	path_start(path, move_spd, path_action_stop, true)
	layer_set_visible("Shake", true)
}
alarm_set(0, 60)