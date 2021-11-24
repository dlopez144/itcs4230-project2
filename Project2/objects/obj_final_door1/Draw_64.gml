/// @description Draws button press hint
if (playerNear) {
	draw_set_colour(c_white)
	draw_set_font(FontSmall)
	draw_set_halign(fa_middle)
	//draw quest title
	draw_text(room_width/2, room_height/2, "Press \"E\" to use key")
}