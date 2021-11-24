/// @description Draws button press hint
if (playerNear) {
	draw_set_colour(c_white)
	draw_set_font(FontSmall)
	draw_set_halign(fa_middle)
	//draw quest title
	draw_text(x, y-20, "Press \"E\" to use crowbar")
}