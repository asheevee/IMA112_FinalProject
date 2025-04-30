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
		/// @DnDInput : 3
		/// @DnDParent : 03225579
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "expr_2" "sign(move_x) * (9 - global.powerupstate_boss_speed  + move_walkSpeed)"
		/// @DnDArgument : "var" "move_y"
		/// @DnDArgument : "var_1" "move_isGrounded"
		/// @DnDArgument : "var_2" "move_x"
		move_y = 0;
		move_isGrounded = true;
		move_x = sign(move_x) * (9 - global.powerupstate_boss_speed  + move_walkSpeed);
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 6EA184E2
		/// @DnDParent : 03225579
		/// @DnDArgument : "x1" "bbox_left + move_x"
		/// @DnDArgument : "y1" "bbox_top + 1"
		/// @DnDArgument : "x2" "bbox_right + move_x"
		/// @DnDArgument : "y2" "bbox_bottom - 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		/// @DnDArgument : "shape" "1"
		var l6EA184E2_0 = collision_rectangle(bbox_left + move_x, bbox_top + 1, bbox_right + move_x, bbox_bottom - 1, collision_tilemap, true, 1);if((l6EA184E2_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 238F618C
			/// @DnDParent : 6EA184E2
			/// @DnDArgument : "expr" "-move_x"
			/// @DnDArgument : "var" "move_x"
			move_x = -move_x;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 7E98362D
		/// @DnDParent : 03225579
		/// @DnDArgument : "x" "image_xscale / 2 * 32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "collision_tilemap"
		/// @DnDArgument : "not" "1"
		var l7E98362D_0 = instance_place(x + image_xscale / 2 * 32, y + 32, [collision_tilemap]);if (!(l7E98362D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 159E148B
			/// @DnDInput : 2
			/// @DnDParent : 7E98362D
			/// @DnDArgument : "expr" "-move_jumpSpeed"
			/// @DnDArgument : "expr_1" "sign(move_x) * (move_walkSpeed + 4)"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "move_x"
			move_y = -move_jumpSpeed;
			move_x = sign(move_x) * (move_walkSpeed + 4);}}

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
	/// @DnDArgument : "object" "collision_tilemap"
	move_and_collide(move_x, move_y, collision_tilemap,8,0,0,-1,-1);}