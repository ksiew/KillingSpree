class_name HealthComponent;
extends Area2D

@export var health: int;

signal hurt();

func _ready():
	#allows collision with player hitboxes
	area_entered.connect(on_area_entered)
	
func on_area_entered(area: Area2D):
	print("I got hurt!")
	hurt.emit()

func handle_hit(damage=1):
	health -= damage;
	hurt.emit();

