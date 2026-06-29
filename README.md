# Non-unique Snowflakes in Godot

This repo demonstrates an issue in Godot where nodes are instantiated with the same name:

![](RemoteTree.png)

- In [Snowflake](scenes/entities/entity.gd) `_init()`, it passes itself to an [Autoload signal](autoload/entities.gd)
- `instantiate()` and return this object in the [spawner](scripts/spawner.gd)'s `_ready`
- The autoload's signal is watched by a [snowflake_spawner](scenes/main/snowflake_spawner.gd) that handles adding the node to the correct place
