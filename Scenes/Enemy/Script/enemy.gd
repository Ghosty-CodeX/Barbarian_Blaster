extends PathFollow3D

@export var move_speed: float = 2.5

@onready var base = get_tree().get_first_node_in_group("base")



func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	progress += delta * move_speed
	if progress_ratio == 1.0:
		base.take_damage()
