class_name FallState
extends "res://Scripts/PlayerStates/State.gd"


# Called when the node enters the scene tree for the first time.

var grav;

func enter():
	grav = player.velocity.y;
	
func exit():
	player.velocity.y = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func physics_process(delta):
	grav += 10;
	player.velocity.y = grav
	if player.is_on_floor():
		if Input.is_action_pressed("left"):
			change_state.emit(States.WALK_BACK);
		elif Input.is_action_pressed("right"):
			change_state.emit(States.WALK);
		else:
			change_state.emit(States.IDLE);
