/// @description Insert description here
// You can write your code in this editor
obj_game_controller.hasAxe = true
obj_UI_controller.quest_title = "Use the axe"
obj_UI_controller.quest_body = "- There must something around here\nthat can be broken through\n" +
								"- Explore"
audio_play_sound(sfx_axe_vl, 1, 0)
instance_destroy()