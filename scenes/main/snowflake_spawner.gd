extends Spawner
class_name SnowflakeSpawner


func _ready() -> void:
	super()
	# Code adding non-unique Snowflakes
	Entities.entity_added.connect(func(entity: Entity) -> void:
		if entity is Snowflake:
			spawn_destination.add_child(entity, true)
			print("Snowflake %s added to scene" % entity.get_instance_id())
	)
