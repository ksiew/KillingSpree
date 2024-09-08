class_name WalkState
extends "res://Scripts/PlayerStates/State.gd"


func enter():
	pass;
	
func exit():
	pass;
	
func process(delta):
	pass;
	
func physics_process(delta):
	player.velocity.x = playerStats.speed;
	if not player.is_on_floor():
		change_state.emit(States.FALL)
	
func handle_input(_event: InputEvent):
	if _event.is_action_pressed("attack"):
		change_state.emit(States.ATTACK)
	elif _event.is_action_released("ui_left") or _event.is_action_released("ui_right"):
		change_state.emit(States.IDLE)
	elif _event.is_action_pressed("jump"):
		change_state.emit(States.JUMP)

