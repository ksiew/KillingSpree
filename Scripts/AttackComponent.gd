class_name AttackComponent;
extends Area2D

@export var damage: int;

signal hit();

func _ready():
	#allows collision with player hurtboxes
	area_entered.connect(on_area_entered)
		
func on_area_entered(area: Area2D):
	print("I hit something")
	hit.emit()
	
func handle_hit():
	hit.emit();
