/// @description Insert description here
// You can write your code in this editor

if (draw_health_bar){
	
	//if surface_exists(obj_light_source.light_surf) {
		//draw bar background
		surface_set_target(application_surface)
		draw_sprite_stretched(spr_bar_background,0,x-healthbar_width/2,y-45, healthbar_width, healthbar_height)
		//draw bar
		draw_sprite_stretched(spr_health_bar_fill,0,x-healthbar_width/2,y-45, (enemy_hp/maxHP)*healthbar_width, healthbar_height)
		//draw border
		draw_set_color(c_black)
		draw_rectangle(x-healthbar_width/2, y-45, x+healthbar_width/2-1, y-45+healthbar_height-1, 1)
		//draw_surface(obj_light_source.light_surf, 0, 0)
		surface_reset_target()
	//}
	draw_health_bar = false
}