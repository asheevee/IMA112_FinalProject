/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56D1DF7F
/// @DnDArgument : "expr" "layer_tilemap_get_id("tileset_floor")"
/// @DnDArgument : "var" "collision_tilemap"
collision_tilemap = layer_tilemap_get_id("tileset_floor");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C8DAB5B
/// @DnDArgument : "expr" "move_x*move_walkSpeed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*move_walkSpeed;