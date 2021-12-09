/// @description Insert description here
// You can write your code in this editor
/// @description Win message/UI
if (obj_game_controller.levelComplete) {
	draw_set_font(FontSmall)
	//Sets color
	draw_set_colour(c_purple)
	//draws border for menu
	draw_rectangle(room_width / 2-200, room_height / 2-100, room_width / 2+200, room_height / 2+100, true)
	//Sets color
	draw_set_colour(c_fuchsia)
	draw_set_alpha(.5)
	draw_rectangle(room_width / 2-200, room_height / 2-100, room_width / 2+200, room_height / 2+100, false)
	//Center is 683, 384
	draw_set_colour(c_white)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	//restar button
	draw_text(room_width / 2, room_height / 2-50, "Level complete! Press \"Enter\" to continue.")
	draw_text(room_width / 2, room_height / 2, "Or press \"r\" to restart!")
}