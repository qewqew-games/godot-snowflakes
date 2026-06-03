extends Node2D

signal entity_added(entity: Entity)

var entity_instances: Array[Entity] = []


func add_entity(entity_instance: Entity) -> void:
	if not entity_instance in entity_instances:
		entity_instances.append(entity_instance)
		entity_added.emit(entity_instance)
