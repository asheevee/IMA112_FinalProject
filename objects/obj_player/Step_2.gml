/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BEBF502
/// @DnDArgument : "var" "global.interact"
if(global.interact == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7427CC98
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "not" "1"
	if(!(move_x == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6FF083BE
		/// @DnDParent : 7427CC98
		/// @DnDArgument : "xscale" "sign(move_x)"
		image_xscale = sign(move_x);
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 63FA87B3
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "expr" "move_isGrounded"
	if(move_isGrounded)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7A37600C
		/// @DnDParent : 63FA87B3
		image_speed = 1;
	
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

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 49351C84
	/// @DnDParent : 0BEBF502
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 347A5600
		/// @DnDParent : 49351C84
		/// @DnDArgument : "expr" "move_isJumping"
		if(move_isJumping)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1CE27C39
			/// @DnDParent : 347A5600
			/// @DnDArgument : "speed" "0"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51340331
			/// @DnDParent : 347A5600
			/// @DnDArgument : "var" "global.powerupstate_jump"
			if(global.powerupstate_jump == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 17F74EC8
				/// @DnDParent : 51340331
				/// @DnDArgument : "imageind" "floor(move_jumpTimer / 7)"
				/// @DnDArgument : "spriteind" "spr_player_jump"
				/// @DnDSaveInfo : "spriteind" "spr_player_jump"
				sprite_index = spr_player_jump;
				image_index = floor(move_jumpTimer / 7);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 399C4147
			/// @DnDParent : 347A5600
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 13AFC5A6
				/// @DnDParent : 399C4147
				/// @DnDArgument : "imageind" "min(3, floor(move_jumpTimer / 8))"
				/// @DnDArgument : "spriteind" "spr_player_jump"
				/// @DnDSaveInfo : "spriteind" "spr_player_jump"
				sprite_index = spr_player_jump;
				image_index = min(3, floor(move_jumpTimer / 8));
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 14208DFA
		/// @DnDParent : 49351C84
		else
		{
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 45519DBB
			/// @DnDParent : 14208DFA
			/// @DnDArgument : "msg" "image_index"
			show_debug_message(string(image_index));
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 71F360E9
			/// @DnDParent : 14208DFA
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_player_jump"
			/// @DnDSaveInfo : "spriteind" "spr_player_jump"
			sprite_index = spr_player_jump;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 405DF98B
			/// @DnDParent : 14208DFA
			/// @DnDArgument : "var" "image_index"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "3"
			if(image_index >= 3)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 35BEA586
				/// @DnDParent : 405DF98B
				/// @DnDArgument : "speed" "0"
				image_speed = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 50A2937A
			/// @DnDParent : 14208DFA
			else
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 536B1311
				/// @DnDParent : 50A2937A
				image_speed = 1;
			}
		}
	}
}