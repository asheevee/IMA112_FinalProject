/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 65C1AEEC
/// @DnDComment : touching the floor$(13_10)(high iteration count on move+collide should ensure no false negatives)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l65C1AEEC_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l65C1AEEC_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B3D9EF8
	/// @DnDInput : 2
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "var_1" "move_isGrounded"
	move_y = 0;
	move_isGrounded = true;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 476E38F7
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "x" "x + 25 * sign(move_x)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l476E38F7_0 = instance_place(x + 25 * sign(move_x), y + 0, [collision_tilemap]);
	if ((l476E38F7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33BF130F
		/// @DnDParent : 476E38F7
		/// @DnDArgument : "expr" "-move_jumpSpeed"
		/// @DnDArgument : "var" "move_y"
		move_y = -move_jumpSpeed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 276572F3
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "x" "x + 30 * sign(move_x)"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l276572F3_0 = instance_place(x + 30 * sign(move_x), y + 50, [collision_tilemap]);
	if (!(l276572F3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CF5A1E0
		/// @DnDInput : 2
		/// @DnDParent : 276572F3
		/// @DnDArgument : "expr" "-move_jumpSpeed"
		/// @DnDArgument : "expr_1" "-move_x"
		/// @DnDArgument : "var" "move_y"
		/// @DnDArgument : "var_1" "move_x"
		move_y = -move_jumpSpeed;
		move_x = -move_x;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A250E90
/// @DnDComment : not grounded AND jump timer is running out$(13_10)apply gravity
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 277B626B
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "move_isGrounded"
	move_isGrounded = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DAB2ABF
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "move_freeGravity"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "move_y"
	move_y += move_freeGravity;
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 7C9F472D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "8"
/// @DnDArgument : "maxxmove" "move_walkSpeed"
/// @DnDArgument : "maxymove" "48"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,8,0,0,move_walkSpeed,48);