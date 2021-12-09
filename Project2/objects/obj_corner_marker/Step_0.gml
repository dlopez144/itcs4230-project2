if instance_exists(obj_invis_light) and instance_exists(obj_player) {
	x = obj_player.x + obj_invis_light.radius * cos(degtorad(obj_invis_light.image_angle))
	y = obj_player.y - obj_invis_light.radius * sin(degtorad(obj_invis_light.image_angle))
}