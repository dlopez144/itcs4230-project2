cam_width = camera_get_view_width(view_camera[0])
cam_height = camera_get_view_height(view_camera[0])
light_surf = surface_create(1920, 1080)
//light_surf = surface_create(1920, 1080)

// disable normal drawing to shade stuff
application_surface_draw_enable(false)

u_dark = shader_get_uniform(light_multiplier, "u_f_darkness")
u_sample = shader_get_sampler_index(light_multiplier, "u_sampler_light")

draw_map = false

defaultHeight = light_circle_height
defaultWidth = light_circle_width