class_name AlertState
extends State

func set_stats(_player, _playerStats, _animationPlayer):
	super(_player, _playerStats, _animationPlayer)
	animationPlayer.animation_finished.connect(on_alert)
	
func on_alert(state):
	change_state.emit(state)
