extends Node2D

signal entity_added(entity: Entity)


func add_entity(entity_instance: Entity) -> void:
	entity_added.emit(entity_instance)
