class_name StateComponent
extends Node2D

@export var player:CharacterBody2D;
@export var animationPlayer: AnimationPlayer;
@export var playerStats: Resource
var currState: State;

func _ready():
	for child: State in get_children():
		if !currState:
			currState = child
			set_state(child.name);
		child.change_state.connect(set_state)
		child.set_stats(player, playerStats, animationPlayer)
	
func _process(delta):
	currState.process(delta);
	
func _physics_process(delta):
	currState.physics_process(delta)	
	player.move_and_slide()

func _input(event: InputEvent):
	currState.handle_input(event);

func set_state(newState:String):
	print(newState)
	animationPlayer.stop();
	animationPlayer.play(newState)
	currState.exit()
	currState = get_node(newState)
	currState.enter();
	
func get_state():
	return currState;
	
func handle_hurt():
	set_state(States.HURT)
	

