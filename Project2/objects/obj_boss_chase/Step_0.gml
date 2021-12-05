/// @desc Reset move speed when not in light
if (!place_meeting(x, y, obj_cone)) {
	move_spd = max_move_spd
}