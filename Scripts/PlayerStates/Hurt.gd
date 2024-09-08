class_name HurtState
extends State

func set_stats(_player, _playerStats, _animationPlayer):
	player = _player;
	playerStats = _playerStats;
	animationPlayer = _animationPlayer
	animationPlayer.animation_finished.connect(finish)
	
func finish(anim_name):
	change_state.emit(States.IDLE)


#func _on_animation_player_animation_finished(anim_name):
	#print("finish animation")
	#change_state.emit(States.IDLE)
