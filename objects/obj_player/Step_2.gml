/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BEBF502
/// @DnDArgument : "var" "global.interact"
if(global.interact == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 63FA87B3
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "expr" "move_isGrounded"
	if(move_isGrounded)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34F658DE
		/// @DnDParent : 63FA87B3
		/// @DnDArgument : "var" "move_x"
		/// @DnDArgument : "not" "1"
		if(!(move_x == 0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 225103BD
			/// @DnDParent : 34F658DE
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_player_walk"
			/// @DnDSaveInfo : "spriteind" "spr_player_walk"
			sprite_index = spr_player_walk;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 1030705E
			/// @DnDParent : 34F658DE
			/// @DnDArgument : "xscale" "sign(move_x)"
			image_xscale = sign(move_x);
			image_yscale = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3D13D235
		/// @DnDParent : 63FA87B3
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 03D2C48A
			/// @DnDParent : 3D13D235
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_player"
			/// @DnDSaveInfo : "spriteind" "spr_player"
			sprite_index = spr_player;
			image_index += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65DE64E8
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	if(move_y < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 17F74EC8
		/// @DnDParent : 65DE64E8
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_jump"
		/// @DnDSaveInfo : "spriteind" "spr_player_jump"
		sprite_index = spr_player_jump;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 592AA920
	/// @DnDParent : 0BEBF502
	while(true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1E79E63E
		/// @DnDParent : 592AA920
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l1E79E63E_0 = collision_point(x + 32, y + 0, collision_tilemap, true, 1);
		if((l1E79E63E_0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C1176C7
			/// @DnDParent : 1E79E63E
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5A7B57C0
		/// @DnDParent : 592AA920
		else
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 711FEA14
			/// @DnDParent : 5A7B57C0
			/// @DnDArgument : "x" "-32"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "obj" "collision_tilemap"
			var l711FEA14_0 = collision_point(x + -32, y + 0, collision_tilemap, true, 1);
			if((l711FEA14_0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 09080BC9
				/// @DnDParent : 711FEA14
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 515E0A74
			/// @DnDParent : 5A7B57C0
			else
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 13B3A8F4
				/// @DnDParent : 515E0A74
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "32"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "obj" "collision_tilemap"
				var l13B3A8F4_0 = collision_point(x + 0, y + 32, collision_tilemap, true, 1);
				if((l13B3A8F4_0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4CBFC19D
					/// @DnDParent : 13B3A8F4
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += -1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 43B3005E
				/// @DnDParent : 515E0A74
				else
				{
					/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
					/// @DnDVersion : 1
					/// @DnDHash : 77C409BA
					/// @DnDParent : 43B3005E
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-32"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "obj" "collision_tilemap"
					var l77C409BA_0 = collision_point(x + 0, y + -32, collision_tilemap, true, 1);
					if((l77C409BA_0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 41D48A48
						/// @DnDInput : 3
						/// @DnDParent : 77C409BA
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "y"
						/// @DnDArgument : "var_1" "move_y"
						/// @DnDArgument : "var_2" "move_jumpTimer"
						y += 1;
						move_y = 0;
						move_jumpTimer = 0;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 044C0AE9
					/// @DnDParent : 43B3005E
					else
					{
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 2FD06318
						/// @DnDParent : 044C0AE9
						break;
					}
				}
			}
		}
	}
}