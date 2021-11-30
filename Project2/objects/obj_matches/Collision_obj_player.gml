/// @description Insert description here
// You can write your code in this editor
obj_game_controller.hasMatches = true

if (obj_game_controller.hasFuel) {
	obj_UI_controller.quest_title = "Burn this place down"
	obj_UI_controller.quest_body = "- Find a way out"
} else {
	obj_UI_controller.quest_title = "Kill the monster"
	obj_UI_controller.quest_body = "- Find fuel"
}

instance_destroy()