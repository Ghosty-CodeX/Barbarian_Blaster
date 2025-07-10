extends Node3D

@export var max_health: int = 5
@onready var label_3d: Label3D = $Label3D




func take_damage() -> void:
	print("Base damaged")
	max_health -= 1
	label_3d.text = str(max_health)



func _ready() -> void:
	label_3d.text = str(max_health)



func _process(delta: float) -> void:
	pass
