class_name JumpState
extends "res://Scripts/PlayerStates/State.gd"

var grav; 

func enter():
	grav = -playerStats.jumpheight;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func physics_process(delta):
	player.velocity.y = grav
	grav += 10;
	if grav <= 0:
		change_state.emit(States.FALL);
