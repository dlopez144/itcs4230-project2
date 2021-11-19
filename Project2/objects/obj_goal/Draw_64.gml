/// @description Win message/UI
if (obj_controller.levelComplete) {
	draw_set_font(FontSmall)
	//Sets color
	draw_set_colour(c_orange)
	//draws border for menu
	draw_rectangle(room_width / 2-300, room_height / 2-200, room_width / 2+300, room_height / 2+200, true)
	//Sets color
	draw_set_colour($4F7942)
	draw_set_alpha(.5)
	draw_rectangle(room_width / 2-300, room_height / 2-200, room_width / 2+300, room_height / 2+200, false)
	//Center is 683, 384
	draw_set_colour(c_white)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	//restar button
	draw_text(room_width / 2, room_height / 2+50, "Level complete! Press \"Enter\" to continue.")
	draw_text(room_width / 2, room_height / 2+100, "Or press \"r\" to restart!")
}