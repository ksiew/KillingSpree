class_name WalkBackState
extends "res://Scripts/PlayerStates/State.gd"


func physics_process(delta):
	player.velocity.x = -(playerStats.speed * .7);
	if not player.is_on_floor():
		change_state.emit(States.FALL)
	elif Input.is_action_pressed("right"): 
		change_state.emit(States.WALK)
	
func handle_input(_event):
	if _event.is_action_released("left"):
		change_state.emit(States.IDLE)
	elif _event.is_action_pressed("jump"):
		change_state.emit(States.JUMP)
	elif _event.is_action_pressed("attack"):
		change_state.emit(States.ATTACK)
	
