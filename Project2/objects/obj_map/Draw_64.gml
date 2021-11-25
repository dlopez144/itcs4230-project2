if (showText) {
	draw_set_colour(c_white)
	draw_set_font(FontSmall)
	draw_set_halign(fa_middle)
	draw_text(1000, 500, "Press \"M\" to open Map")
	if keyboard_check_pressed(ord("M")) then instance_destroy()
} 