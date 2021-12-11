/// @description detect player entering goal
if (instance_exists(obj_boss_chase)) {
	audio_stop_sound(obj_boss_chase.sound)
}
audio_stop_all()
obj_UI_controller.quest_title = "No way back"
obj_UI_controller.quest_body = "- Look for another way out"
obj_game_controller.levelComplete = true
instance_destroy(other)