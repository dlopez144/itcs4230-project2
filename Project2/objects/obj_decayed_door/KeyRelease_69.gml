/// @description Destroy door
if (playerNear) {
	obj_UI_controller.quest_title = "Suspicious bookcase"
	obj_UI_controller.quest_body = "- One of those books may reveal a secrete passage.\nQuestion is, which one?"
	instance_destroy()
}