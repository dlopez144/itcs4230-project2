if(keyboard_check(vk_left)) { 
	x -= 5
	image_xscale = -1
}
if(keyboard_check(vk_right)) 
{	
	x += 5
	image_xscale = 1	
}
if(keyboard_check(vk_up)) then y -= 5
if(keyboard_check(vk_down)) then y += 5