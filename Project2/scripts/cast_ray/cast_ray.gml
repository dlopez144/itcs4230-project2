// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cast_ray(x_start, y_start, x_end, y_end) {
	block_1 = collision_line(x_start, y_start, x_end, y_end, obj_block, true, true)
	
	// distances to be inspected
	distance_x = 0
	distance_y = 0
	
	if block_1 != noone {
		distance_x = x_end - x_start
		distance_y = y_end - y_start
		
		while abs(distance_x) >= 1 or abs(distance_y) >= 1 {
			// halving distances 
			distance_x /= 2
			distance_y /= 2
			
			temp_x_end = x_end - distance_x
			temp_y_end = y_end - distance_y
			
			block_2 = collision_line(x_start, y_start, temp_x_end, temp_y_end, obj_block, true, true)
			
			if block_2 != noone {
				block_1 = block_2
				x_end -= distance_x
				y_end -= distance_y
			}
		}
	}
	
	ray_coords = [x_end - distance_x, y_end - distance_y * 2]
	return ray_coords
	
}