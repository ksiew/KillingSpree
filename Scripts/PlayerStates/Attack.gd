class_name AttackState
extends "res://Scripts/PlayerStates/State.gd"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func enter():
	player.velocity.x *= .1

func process(delta):
	if not animationPlayer.is_playing():
		change_state.emit(States.IDLE);
