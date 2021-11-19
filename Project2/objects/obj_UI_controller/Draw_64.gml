/// @desc UI

// clamp player hp to max
if (player_hp > player_maxHP) player_hp = player_maxHP
//draw bar background
draw_sprite_stretched(spr_bar_background,0,healthbar_x,healthbar_y, healthbar_width, healthbar_height)
//draw bar
draw_sprite_stretched(spr_health_bar_fill,0,healthbar_x,healthbar_y, (player_hp/player_maxHP)*healthbar_width, healthbar_height)
//draw border
draw_set_colour(c_black)
draw_rectangle(healthbar_x, healthbar_y, healthbar_x+healthbar_width-1, healthbar_y+healthbar_height-1, 1)
// clamp battery to max
if (battery_charge > battery_max) battery_charge = battery_max
//draw bar background
draw_sprite_stretched(spr_bar_background,0,battery_bar_x,battery_bar_y, battery_bar_width, battery_bar_height)
//draw bar
draw_sprite_stretched(spr_battery_bar_fill,0,battery_bar_x,battery_bar_y, (battery_charge/battery_max)*battery_bar_width, battery_bar_height)
//draw border
draw_rectangle(battery_bar_x, battery_bar_y, battery_bar_x+battery_bar_width-1, battery_bar_y+battery_bar_height-1, 1)

draw_set_font(FontSmall)
draw_set_halign(fa_left)
//draw quest title
draw_text(quest_title_x, quest_title_y, quest_title)
//draw quest body
draw_text(quest_body_x, quest_body_y, quest_body)