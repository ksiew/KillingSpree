class_name IdleState
extends State

func enter():
	pass;
	
func exit():
	pass;
	
func process(delta):
	pass;
	
func physics_process(delta):
	player.velocity.x *= .1;
	if Input.is_action_pressed("right"):
		change_state.emit(States.WALK)
	elif Input.is_action_pressed("left"):
		change_state.emit(States.WALK_BACK)
	
func handle_input(_event: InputEvent):
	if _event.is_action_pressed("attack"):
		change_state.emit(States.ATTACK)
	elif _event.is_action_pressed("jump") and player.is_on_floor():
		change_state.emit(States.JUMP)
		

