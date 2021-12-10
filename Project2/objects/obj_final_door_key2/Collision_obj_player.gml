obj_game_controller.hasKey2 = true
obj_UI_controller.quest_title = "Run"
obj_UI_controller.quest_body = "- Whatever that was is comming back!\nFind the exit and get out!"
instance_create_layer(150, 985, layer, obj_boss_chase)
audio_play_sound(sfx_final_key_vl, 1, 0)
instance_destroy()
