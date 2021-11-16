/// @desc UI

// clamp player hp to max
if (player_hp > player_maxHP) player_hp = player_maxHP
//draw bar
draw_sprite_stretched(spr_health_bar_fill,0,healthbar_x,healthbar_y, (player_hp/player_maxHP)*healthbar_width, healthbar_height)

// clamp battery to max
if (battery_charge > battery_max) battery_charge = battery_max
//draw bar
draw_sprite_stretched(spr_battery_bar_fill,0,battery_bar_x,battery_bar_y, (battery_charge/battery_max)*battery_bar_width, battery_bar_height)