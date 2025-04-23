/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 23467466
var l23467466_0 = noone;
if (audio_is_playing(l23467466_0))
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 044A3001
	/// @DnDParent : 23467466
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "interact"
	global.interact = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 179F72D8
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 70DC1957
	/// @DnDParent : 179F72D8
	/// @DnDArgument : "var" "interact"
	global.interact = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D984362
/// @DnDComment : if global.interact is NOT 0, NOTHING should happen$(13_10)so EVERYTHING that can possibly happen to anything is inside this if statement
/// @DnDArgument : "var" "global.interact"
if(global.interact == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 148C6858
	/// @DnDInput : 4
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -0.2)"
	/// @DnDArgument : "expr_1" "keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0.2)"
	/// @DnDArgument : "expr_2" "keyboard_check(vk_up) || keyboard_check(vk_space) || gamepad_button_check(0, gp_face1)"
	/// @DnDArgument : "expr_3" "keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)"
	/// @DnDArgument : "var" "control_input_left"
	/// @DnDArgument : "var_1" "control_input_right"
	/// @DnDArgument : "var_2" "control_input_jumpHold"
	/// @DnDArgument : "var_3" "control_input_jumpInit"
	control_input_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -0.2);
	control_input_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0.2);
	control_input_jumpHold = keyboard_check(vk_up) || keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
	control_input_jumpInit = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18B60183
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "(control_input_right - control_input_left) * move_walkSpeed"
	/// @DnDArgument : "var" "move_x"
	move_x = (control_input_right - control_input_left) * move_walkSpeed;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2D699C27
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "control_input_jumpHold"
	/// @DnDArgument : "not" "1"
	if(!(control_input_jumpHold))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1CA0D370
		/// @DnDParent : 2D699C27
		/// @DnDArgument : "expr" "move_isJumping"
		if(move_isJumping)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C81E31F
			/// @DnDInput : 4
			/// @DnDParent : 1CA0D370
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_2" "-2"
			/// @DnDArgument : "var" "move_isJumping"
			/// @DnDArgument : "var_1" "move_jumpTimer"
			/// @DnDArgument : "var_2" "move_y"
			/// @DnDArgument : "var_3" "move_bufferedJump"
			move_isJumping = false;
			move_jumpTimer = 0;
			move_y = -2;
			move_bufferedJump = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3637D483
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer = 0"
	if(move_isJumping and move_jumpTimer = 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58ED1886
		/// @DnDInput : 2
		/// @DnDParent : 3637D483
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_bufferedJump"
		move_isJumping = false;
		move_bufferedJump = false;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 42678B7C
	/// @DnDParent : 7D984362
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "48"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l42678B7C_0 = instance_place(x + 0, y + 48, [collision_tilemap]);
	if ((l42678B7C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 01DE7231
		/// @DnDParent : 42678B7C
		/// @DnDArgument : "expr" "control_input_jumpInit"
		if(control_input_jumpInit)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 652EFC70
			/// @DnDParent : 01DE7231
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "move_bufferedJump"
			move_bufferedJump = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30D1C326
	/// @DnDParent : 7D984362
	/// @DnDArgument : "var" "move_coyoteTime"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "move_coyoteTime_max"
	if(move_coyoteTime <= move_coyoteTime_max)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 716A86A0
		/// @DnDParent : 30D1C326
		/// @DnDArgument : "expr" "control_input_jumpInit && move_y >= 0"
		if(control_input_jumpInit && move_y >= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ADC3F99
			/// @DnDInput : 2
			/// @DnDParent : 716A86A0
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "move_jumpTimer_init"
			/// @DnDArgument : "var" "move_isJumping"
			/// @DnDArgument : "var_1" "move_jumpTimer"
			move_isJumping = true;
			move_jumpTimer = move_jumpTimer_init;
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 65C1AEEC
	/// @DnDParent : 7D984362
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
		/// @DnDInput : 3
		/// @DnDParent : 65C1AEEC
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "move_y"
		/// @DnDArgument : "var_1" "move_isGrounded"
		/// @DnDArgument : "var_2" "move_coyoteTime"
		move_y = 0;
		move_isGrounded = true;
		move_coyoteTime = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2C69024F
		/// @DnDParent : 65C1AEEC
		/// @DnDArgument : "expr" "move_bufferedJump && (control_input_jumpHold || control_input_jumpInit)"
		if(move_bufferedJump && (control_input_jumpHold || control_input_jumpInit))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2AF434B1
			/// @DnDInput : 2
			/// @DnDParent : 2C69024F
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "move_jumpTimer_init"
			/// @DnDArgument : "var" "move_isJumping"
			/// @DnDArgument : "var_1" "move_jumpTimer"
			move_isJumping = true;
			move_jumpTimer = move_jumpTimer_init;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3A250E90
	/// @DnDParent : 7D984362
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 277B626B
		/// @DnDParent : 3A250E90
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "move_isGrounded"
		move_isGrounded = false;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5E4688A0
		/// @DnDParent : 3A250E90
		/// @DnDArgument : "expr" "move_isJumping"
		if(move_isJumping)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 283679B0
			/// @DnDParent : 5E4688A0
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "var" "move_coyoteTime"
			move_coyoteTime = 100;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 68FD0524
		/// @DnDParent : 3A250E90
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B1C72DF
			/// @DnDParent : 68FD0524
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "move_coyoteTime"
			move_coyoteTime += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3D7A6460
		/// @DnDParent : 3A250E90
		/// @DnDArgument : "expr" "move_jumpTimer <= move_jumpTimer_init - move_jumpTimer_goStraightFrame"
		if(move_jumpTimer <= move_jumpTimer_init - move_jumpTimer_goStraightFrame)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DAB2ABF
			/// @DnDParent : 3D7A6460
			/// @DnDArgument : "expr" "move_freeGravity"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "move_y"
			move_y += move_freeGravity;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 491C8597
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "move_coyoteTime = 0 || move_coyoteTime > move_coyoteTime_max"
	if(move_coyoteTime = 0 || move_coyoteTime > move_coyoteTime_max)
	{
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 7EAE411F
		/// @DnDParent : 491C8597
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "34"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "collision_tile_index"
		/// @DnDArgument : "layername" ""tileset_floor""
		var l7EAE411F_0 = layer_tilemap_get_id("tileset_floor");
		collision_tile_index = undefined;
		if(l7EAE411F_0 > -1) {
			var l7EAE411F_1 = tilemap_get_at_pixel(l7EAE411F_0, x + 0, y + 34);
			if(l7EAE411F_1 > -1) collision_tile_index = tile_get_index(l7EAE411F_1);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77C05125
		/// @DnDParent : 491C8597
		/// @DnDArgument : "var" "collision_tile_index"
		if(collision_tile_index == 0)
		{
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
			/// @DnDVersion : 1
			/// @DnDHash : 39EE597C
			/// @DnDParent : 77C05125
			/// @DnDArgument : "x" "32"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "34"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "var" "collision_tile_index"
			/// @DnDArgument : "layername" ""tileset_floor""
			var l39EE597C_0 = layer_tilemap_get_id("tileset_floor");
			collision_tile_index = undefined;
			if(l39EE597C_0 > -1) {
				var l39EE597C_1 = tilemap_get_at_pixel(l39EE597C_0, x + 32, y + 34);
				if(l39EE597C_1 > -1) collision_tile_index = tile_get_index(l39EE597C_1);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5AF155BE
			/// @DnDParent : 77C05125
			/// @DnDArgument : "var" "collision_tile_index"
			if(collision_tile_index == 0)
			{
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 5F8AAB73
				/// @DnDParent : 5AF155BE
				/// @DnDArgument : "x" "-32"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "34"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "collision_tile_index"
				/// @DnDArgument : "layername" ""tileset_floor""
				var l5F8AAB73_0 = layer_tilemap_get_id("tileset_floor");
				collision_tile_index = undefined;
				if(l5F8AAB73_0 > -1) {
					var l5F8AAB73_1 = tilemap_get_at_pixel(l5F8AAB73_0, x + -32, y + 34);
					if(l5F8AAB73_1 > -1) collision_tile_index = tile_get_index(l5F8AAB73_1);
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0DB3D31B
	/// @DnDParent : 7D984362
	/// @DnDArgument : "msg" "collision_tile_index"
	show_debug_message(string(collision_tile_index));

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A904CB9
	/// @DnDParent : 7D984362
	/// @DnDArgument : "x" "2 * sign(move_x)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l2A904CB9_0 = instance_place(x + 2 * sign(move_x), y + 0, [collision_tilemap]);
	if ((l2A904CB9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 418A676A
		/// @DnDParent : 2A904CB9
		/// @DnDArgument : "var" "move_x"
		move_x = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 51DF6DBE
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer > move_jumpTimer_init - move_jumpTimer_goStraightFrame"
	if(move_isJumping and move_jumpTimer > move_jumpTimer_init - move_jumpTimer_goStraightFrame)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 311CA547
		/// @DnDParent : 51DF6DBE
		/// @DnDArgument : "expr" "-move_jumpSpeed"
		/// @DnDArgument : "var" "move_y"
		move_y = -move_jumpSpeed;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 23829D9F
	/// @DnDParent : 7D984362
	/// @DnDArgument : "expr" "move_isJumping"
	if(move_isJumping)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C1ACA0F
		/// @DnDParent : 23829D9F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_jumpTimer"
		move_jumpTimer += -1;
	}

	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 7C9F472D
	/// @DnDParent : 7D984362
	/// @DnDArgument : "xvel" "move_x"
	/// @DnDArgument : "yvel" "move_y"
	/// @DnDArgument : "num_iterations" "8"
	/// @DnDArgument : "maxxmove" "move_walkSpeed"
	/// @DnDArgument : "maxymove" "48"
	/// @DnDArgument : "object" "collision_tilemap"
	move_and_collide(move_x, move_y, collision_tilemap,8,0,0,move_walkSpeed,48);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58153010
	/// @DnDParent : 7D984362
	/// @DnDArgument : "var" "collision_tile_index"
	/// @DnDArgument : "value" "12"
	if(collision_tile_index == 12)
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1484EF3D
		/// @DnDParent : 58153010
		room_restart();
	}
}