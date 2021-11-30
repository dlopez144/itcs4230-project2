obj_game_controller.hasFuel = true
if (obj_game_controller.hasMatches) {
	obj_UI_controller.quest_title = "Burn this place down"
	obj_UI_controller.quest_body = "- Find a way out"
} else {
	obj_UI_controller.quest_title = "Kill the monster"
	obj_UI_controller.quest_body = "- Find matches"
}
instance_destroy()

