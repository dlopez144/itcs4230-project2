/// @description Open door
if (playerNear) {
	obj_UI_controller.quest_title = "temp"
	obj_UI_controller.quest_body = "- temp"
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here
}