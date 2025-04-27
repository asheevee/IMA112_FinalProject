/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5303FE5F
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.interact == 1)){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 03225579
	/// @DnDParent : 5303FE5F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l03225579_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l03225579_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 585FD33C
		/// @DnDInput : 2
		/// @DnDParent : 03225579
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "move_y"
		/// @DnDArgument : "var_1" "move_isGrounded"
		move_y = 0;
		move_isGrounded = true;
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6B365FBD
		/// @DnDParent : 03225579
		/// @DnDArgument : "x" "x+25*sign(move_x)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "collision_tilemap"
		var l6B365FBD_0 = instance_place(x+25*sign(move_x), y + 0, [collision_tilemap]);if ((l6B365FBD_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 238F618C
			/// @DnDParent : 6B365FBD
			/// @DnDArgument : "expr" "-move_jumpSpeed"
			/// @DnDArgument : "var" "move_y"
			move_y = -move_jumpSpeed;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 7E98362D
		/// @DnDParent : 03225579
		/// @DnDArgument : "x" "x+30*sign(move_x)"
		/// @DnDArgument : "y" "y+50"
		/// @DnDArgument : "object" "collision_tilemap"
		/// @DnDArgument : "not" "1"
		var l7E98362D_0 = instance_place(x+30*sign(move_x), y+50, [collision_tilemap]);if (!(l7E98362D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 159E148B
			/// @DnDInput : 2
			/// @DnDParent : 7E98362D
			/// @DnDArgument : "expr" "-move_jumpSpeed"
			/// @DnDArgument : "expr_1" "-move_x"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "move_x"
			move_y = -move_jumpSpeed;
			move_x = -move_x;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 763764FA
	/// @DnDParent : 5303FE5F
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F17E77B
		/// @DnDParent : 763764FA
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "move_isGrounded"
		move_isGrounded = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1774D070
		/// @DnDParent : 763764FA
		/// @DnDArgument : "expr" "move_freeGravity"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += move_freeGravity;}

	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 26C532A6
	/// @DnDParent : 5303FE5F
	/// @DnDArgument : "xvel" "move_x"
	/// @DnDArgument : "yvel" "move_y"
	/// @DnDArgument : "num_iterations" "8"
	/// @DnDArgument : "maxxmove" "move_walkSpeed"
	/// @DnDArgument : "maxymove" "48"
	/// @DnDArgument : "object" "collision_tilemap"
	move_and_collide(move_x, move_y, collision_tilemap,8,0,0,move_walkSpeed,48);}