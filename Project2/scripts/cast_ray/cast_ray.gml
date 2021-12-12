/*
* An iterative approach to find a good estimate for a collision point given two start and end coordinates
* Only checks for obj_solid collisions (basically every block in the game)
*/
function cast_ray(x_start, y_start, x_end, y_end) {
	block_1 = collision_line(x_start, y_start, x_end, y_end, obj_solid, true, true)
	
	// distances to be inspected
	distance_x = 0
	distance_y = 0
	
	if block_1 != noone { // block found
		distance_x = x_end - x_start
		distance_y = y_end - y_start
		
		// basically just a form of binary search but on a pixel level
		// 
		while abs(distance_x) >= 1 or abs(distance_y) >= 1 {
			// halving distances until we're approx 1 pixel away from our collision point
			distance_x /= 2
			distance_y /= 2
			
			temp_x_end = x_end - distance_x
			temp_y_end = y_end - distance_y
			
			block_2 = collision_line(x_start, y_start, temp_x_end, temp_y_end, obj_solid, true, true)
			
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