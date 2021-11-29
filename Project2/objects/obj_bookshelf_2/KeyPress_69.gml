if (playerNear) {
	obj_UI_controller.quest_title = "Get out!"
	obj_UI_controller.quest_body = "- The exit is revealed, escape!"
	obj_game_controller.bookShelf2Opened = true;
	instance_destroy()
}