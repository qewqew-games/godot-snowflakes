# Non-unique Snowflakes in Godot

This repo demonstrates an issue in Godot where nodes are instantiated with the same name:

![](RemoteTree.png)

> [!IMPORTANT]
> The `Enemies` spawner and nodes were removed to make the project more concise for review.

The offending code is in [snowflake_spawner](scenes/main/snowflake_spawner.gd):

- Unlike the [enemy_spawner](scenes/main/enemy_spawner.gd), which directly adds the instance to its spawn_destination, the snowflake_spawner waits for a signal from the autoloaded entities.gd.
- Upon receiving the signal, the node is added to the tree.
