draw_self()
if (draw_health_bar) {
	//draw bar background
	
	draw_sprite_stretched(spr_bar_background,0,x-sprite_width/2,y-45, sprite_width, healthbar_height)
	//draw bar
	draw_sprite_stretched(spr_health_bar_fill,0,x-sprite_width/2,y-45, (enemy_hp/maxHP)*healthbar_width, healthbar_height)
	//draw border
	draw_set_color(c_black)
	draw_rectangle(x-sprite_width/2, y-45, x+healthbar_width/2-1, y-45+healthbar_height-1, 1)
}
