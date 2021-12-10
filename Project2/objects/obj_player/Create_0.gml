/// @description Insert description here
// You can write your code in this editor

right = ord("D")
left = ord("A")
up = ord("W")
down = ord("S")

// to be changed later; will add substates instead of having multiple idle states
enum player_state {
	actionable,
	unactionable,
	dying
}

state = player_state.actionable
hsp = 0
vsp = 0
facing = 0

//inputs = ds_list_create()
inputs = [up, down, left, right]
input_stack = ds_stack_create()
hor_speed = 8
ver_speed = 8
