class_name ScrollingObject
extends Node

@export var player: Node2D
@export var killzone: Node2D
@export var spawnzone: Node2D
@export var speed: int

func _process(delta):
	player.position.x -= delta * GlobalVars.tempo * speed
	if player.position.x < killzone.position.x:
		player.position = spawnzone.position
