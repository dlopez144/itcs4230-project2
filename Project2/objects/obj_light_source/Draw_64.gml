/// @description Insert description here
// You can write your code in this editor





shader_set(light_multiplier)

shader_set_uniform_f(u_dark, brightness)
texture_set_stage(u_sample, surface_get_texture(light_surf))
draw_surface(application_surface, 0, 0) // drawing app surf
shader_reset()