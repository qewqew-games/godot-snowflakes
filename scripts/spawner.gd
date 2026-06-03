extends Node
class_name Spawner

@export var spawn_timer: Timer = null
@export var entity_to_spawn: PackedScene
@export var spawn_destination: Node2D = null
@export var spawn_radius: float = 324.0
@export var spawn_centre := Vector2.ZERO


func _ready() -> void:
	spawn_timer.timeout.connect(func() -> void:
		spawn_randomly_in_radius(spawn_centre, spawn_radius)
		print("entity_instances: ", Entities.entity_instances, "\n")
	)


func spawn_randomly_in_radius(centre_position: Vector2, max_radius: float) -> Entity:
	var angle = randf_range(0, TAU)
	var distance = sqrt(randf()) * max_radius
	var offset = Vector2.from_angle(angle) * distance
	var spawn_position = centre_position + offset

	# Prep entity
	var entity = entity_to_spawn.instantiate()
	entity.position = spawn_position
	return entity
