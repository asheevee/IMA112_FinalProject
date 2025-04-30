/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56D1DF7F
/// @DnDArgument : "expr" "layer_tilemap_get_id("tileset_floor")"
/// @DnDArgument : "var" "collision_tilemap"
collision_tilemap = layer_tilemap_get_id("tileset_floor");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C8DAB5B
/// @DnDArgument : "expr" "(9 - global.powerupstate_boss_speed) + move_walkSpeed"
/// @DnDArgument : "var" "move_x"
move_x = (9 - global.powerupstate_boss_speed) + move_walkSpeed;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4390FCD5
/// @DnDArgument : "xscale" "1 + (8 - global.powerupstate_boss_speed) / 2"
/// @DnDArgument : "yscale" "1 + (8 - global.powerupstate_boss_speed) / 2"
image_xscale = 1 + (8 - global.powerupstate_boss_speed) / 2;image_yscale = 1 + (8 - global.powerupstate_boss_speed) / 2;