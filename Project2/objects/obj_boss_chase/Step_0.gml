/// @desc Reset move speed when not in light
if (!place_meeting(x, y, obj_cone)) {
	move_spd = max_move_spd
}
if (instance_exists(obj_player)) {
	if (obj_player.x > x) {
		image_xscale = abs(image_xscale) * -1
	} else {
		image_xscale = abs(image_xscale)
	}
}
