var cam = view_camera[view_current]
application_surface_draw_enable(false)

// in case the player minimizes the game
if !surface_exists(light_surf) {
	light_surf = surface_create(1920, 1080)
}
surface_set_target(light_surf)
camera_apply(cam)

draw_clear_alpha(c_black, 1) // drawing darkness
if instance_exists(obj_player) {
	//draw_circle(obj_player.x, obj_player.y, light_circle_radius, false)
	draw_ellipse(obj_player.x - light_circle_width, obj_player.y - light_circle_height, obj_player.x + light_circle_width, obj_player.y + light_circle_height, false)
}

// drawing map if the player has it
if draw_map == true {
	
	center_x = camera_get_view_x(camera_get_active) + camera_get_view_width(camera_get_active) / 2
	center_y = camera_get_view_y(camera_get_active) + camera_get_view_height(camera_get_active) / 2
	draw_rectangle(center_x - 250, center_y - 180, center_x + 820, center_y + 530, false)
	view_visible[1] = true

}


if instance_exists(obj_cone) and instance_exists(obj_player){
	gpu_set_blendmode(bm_add)
	
	if !instance_exists(obj_invis_light) {
		instance_create_layer(obj_cone.x, obj_cone.y, "Instances", obj_invis_light)
		obj_invis_light.image_angle = obj_cone.image_angle + 90
	}
	
	/*
	end_x = obj_corner_marker.x
	end_y = obj_corner_marker.y
	*/
	
	/*
	// calculating distance vectors to marker endpoints
	// NOTE: this may cause errors because I accidentally subtracted the player y from
	// the end x instead of end_y; it works right now for some reason so I'll leave it like that
	v_x = (end_x - obj_player.x)
	v_y = (end_x - obj_player.y)
	len = sqrt(v_x * v_x + v_y * v_y)
	*/
	
	draw_primitive_begin(pr_trianglefan)
	
	// # of total vertices in a triangle fan = # of lines + 1 origin vertex
	draw_vertex(obj_player.x, obj_player.y) // origin vertex
	
	// casting 30 rays, 1 vertex per each ray
	for (var i = -15; i < 15; i++) {
		ray_x = obj_player.x + obj_invis_light.radius * cos(degtorad(obj_invis_light.image_angle + i))
		ray_y = obj_player.y - obj_invis_light.radius * sin(degtorad(obj_invis_light.image_angle + i))
		ray_coords = cast_ray(obj_player.x, obj_player.y, ray_x, ray_y)
		draw_vertex(ray_coords[0], ray_coords[1])
	}
	
	draw_primitive_end()
	
}


gpu_set_blendmode(bm_normal)
surface_reset_target()