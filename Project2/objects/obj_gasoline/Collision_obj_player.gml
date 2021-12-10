obj_game_controller.hasFuel = true
if (obj_game_controller.hasMatches) {
	obj_UI_controller.quest_title = "Burn this place down"
	obj_UI_controller.quest_body = "- Find a way out"
	
} else {
	obj_UI_controller.quest_title = "Kill the monster"
	obj_UI_controller.quest_body = "- Find matches"
}
audio_play_sound(sfx_gas_vl, 1, 0)
instance_destroy()

