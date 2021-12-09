///// @description Insert description here
//// You can write your code in this editor
//while instance_place(x, y - 1, obj_block) {
//	cus_yscale -= 1
//	image_yscale -= 1
//}

//while instance_place(x + 1, y, obj_block) {
//	cus_xscale -= 1
//	image_xscale -= 1
//}
//show_debug_message("scale")
//show_debug_message(image_yscale)
//if instance_exists(obj_cone) {
//	//image_angle = obj_cone.image_angle + 90
//	while instance_place(x, y - 1, obj_block) {
//		image_xscale -= 0.001
//	}
//} else {
//	instance_destroy()
//}

if instance_exists(obj_cone) {
	image_angle = obj_cone.image_angle + 90
	x = obj_cone.x
	y = obj_cone.y
	//phy_rotation -= 1
}