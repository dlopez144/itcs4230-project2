// moves flashlight cone angle based on directional arrows
if instance_exists(obj_cone) and instance_exists(obj_player) {
	if keyboard_check(vk_right) and not keyboard_check(vk_left) {
		obj_cone.image_angle -= 8
	} else if keyboard_check(vk_left) and not keyboard_check(vk_right) {
		obj_cone.image_angle += 8
	}
}