class_name DetectionComponent
extends Node

@export var state: StatesEnum;
@export var alert_range: Area2D;
@export var attack_range: Area2D;
signal alerted(state)
signal attack()

# Called when the node enters the scene tree for the first time.
func _ready():
	alert_range.area_entered.connect(on_alert)
	attack_range.area_entered.connect(on_attack)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_alert():
	alerted.emit(state)
	
func on_attack():
	attack.emit();
