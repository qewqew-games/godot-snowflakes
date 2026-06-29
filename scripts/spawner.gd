extends Node
class_name Spawner

@export var spawn_timer: Timer = null
@export var entity_to_spawn: PackedScene
@export var spawn_destination: Node2D = null


func _ready() -> void:
	spawn_timer.timeout.connect(func() -> void:
		var entity = entity_to_spawn.instantiate()
	)
