class_name State
extends Node

var player: CharacterBody2D;
var playerStats: Resource;
var animationPlayer: AnimationPlayer

signal change_state(newState)

func enter():
	pass;
	
func exit():
	pass;
	
func process(delta):
	pass;
	
func physics_process(delta):
	pass;
	
func handle_input(_event: InputEvent):
	pass;
	
func set_stats(_player, _playerStats, _animationPlayer):
	player = _player;
	playerStats = _playerStats;
	animationPlayer = _animationPlayer
