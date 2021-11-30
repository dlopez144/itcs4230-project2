/// @description Open door
if (playerNear) {
	obj_UI_controller.quest_title = "Someone, or something is comming!"
	obj_UI_controller.quest_body = "- Go into the basement"
	instance_destroy()
}