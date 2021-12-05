/// @description Open door
if (playerNear) {
	obj_UI_controller.quest_title = "Someone, or something is comming!"
	obj_UI_controller.quest_body = "- Go into the basement"
	instance_create_layer(1000, 540, layer, obj_boss_chase)
	instance_destroy()
} else if (playerNearNoTool) {
	//player interact sound here
}