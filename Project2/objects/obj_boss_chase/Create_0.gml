/// @description Setup

path = path_add()
audio_play_sound_at(sfx_boss_spawn_and_attack, x, y, 0, 100, 300, 1, 0, 1)
sound = audio_play_sound_at(sfx_boss_move, x, y, 0, 100, 300, 1, 1, 1)
max_move_spd = move_spd
alarm[0] = 1
