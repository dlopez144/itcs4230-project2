/// @description Restart level
if (game_over) {
	obj_UI_controller.player_hp = obj_UI_controller.player_maxHP
	obj_UI_controller.battery_charge = obj_UI_controller.battery_max
	
	if (room_get_name(room) == "level_1") {
		hasAxe = false
		hasBookNote1 = false
		hasBookNote2 = false
		hasKey1 = false
		obj_map_open.hasMap = false
		obj_UI_controller.quest_title = "Find a way through to the exit"
		obj_UI_controller.quest_body = "- Explore"
	} else {
		hasCrowbar = false
		hasMatches = false
		hasFuel = false
		hasKey2 = false
		obj_UI_controller.quest_title = "No way back"
		obj_UI_controller.quest_body = "- Look for another way out"
	}
	
	game_over = false
	room_restart()	
} else if (levelComplete) {
	obj_UI_controller.player_hp = obj_UI_controller.player_maxHP
	obj_UI_controller.battery_charge = obj_UI_controller.battery_max
	
	
	if (room_get_name(room) == "level_1") {
		hasAxe = false
		hasBookNote1 = false
		hasBookNote2 = false
		hasKey1 = false
		hasMap = false
		obj_UI_controller.quest_title = "Find a way through to the exit"
		obj_UI_controller.quest_body = "- Explore"
		audio_play_sound(sfx_music, 1, 1)
	} else {
		hasCrowbar = false
		hasMatches = false
		hasFuel = false
		hasKey2 = false
		obj_UI_controller.quest_title = "No way back"
		obj_UI_controller.quest_body = "- Look for another way out"
	}
	levelComplete = false
	room_restart()	
}
