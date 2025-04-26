/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56D1DF7F
/// @DnDArgument : "expr" "layer_tilemap_get_id("tileset_floor")"
/// @DnDArgument : "var" "collision_tilemap"
collision_tilemap = layer_tilemap_get_id("tileset_floor");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E43A647
/// @DnDArgument : "var" "global.powerupstate_jump"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.powerupstate_jump >= 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BDC885D
	/// @DnDInput : 2
	/// @DnDParent : 4E43A647
	/// @DnDArgument : "expr" "16"
	/// @DnDArgument : "expr_1" "34"
	/// @DnDArgument : "var" "move_jumpSpeed"
	/// @DnDArgument : "var_1" "move_jumpTimer_init"
	move_jumpSpeed = 16;
	move_jumpTimer_init = 34;}