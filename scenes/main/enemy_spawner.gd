extends Spawner
class_name EnemySpawner


func _ready() -> void:
	spawn_timer.timeout.connect(func() -> void:
		spawn_randomly_in_radius2(spawn_centre, spawn_radius)
	)

# This is 2 because I couldn't work out how to reuse the super method here
func spawn_randomly_in_radius2(centre_position: Vector2, max_radius: float) -> void:
	var entity = super.spawn_randomly_in_radius(centre_position, max_radius)
	spawn_destination.add_child(entity, true)
