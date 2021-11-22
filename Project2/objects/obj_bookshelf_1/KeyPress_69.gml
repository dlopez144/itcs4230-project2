if (playerNear) {
	instance_destroy()
	obj_UI_controller.quest_title = "Not the books your looking for"
	obj_UI_controller.quest_body = "- That worked, but this next bookshelf\nhas a different set of books" +
									"\n- Find a new note"
}