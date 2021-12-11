if (playerNearNoTool) {
	//player interact sound here
	sound_overlap_check()
	
	audio_play_sound_at(sfx_cracked_wall_vl, x, y, 0, 100, 300, 1, 0, 1)
}
