extends Node3D

@export var projectile : PackedScene
@onready var turret_barrel: MeshInstance3D = $TurretBase/TurretBarrel


func _on_timer_timeout() -> void:
	var shot = projectile.instantiate()
	add_child(shot)
	shot.global_position = turret_barrel.global_position
