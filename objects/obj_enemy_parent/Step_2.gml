/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 047D2FD1
/// @DnDArgument : "expr" "move_isGrounded"
if(move_isGrounded)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 682077EC
	/// @DnDComment : moving horizontally
	/// @DnDParent : 047D2FD1
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "not" "1"
	if(!(move_x == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6FC9A9CA
		/// @DnDParent : 682077EC
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 74541D4A
		/// @DnDParent : 682077EC
		/// @DnDArgument : "speed" "sign(move_x) * move_anim_speed"
		image_speed = sign(move_x) * move_anim_speed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0827DD3E
	/// @DnDParent : 047D2FD1
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0704DACB
		/// @DnDParent : 0827DD3E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 12F574F6
		/// @DnDParent : 0827DD3E
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 435ADE8B
	/// @DnDParent : 047D2FD1
	/// @DnDArgument : "var" "move_air_rotation_drag_timer"
	move_air_rotation_drag_timer = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2C40B331
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3901B8A6
	/// @DnDComment : gradually slows down the animation if in midair
	/// @DnDParent : 2C40B331
	/// @DnDArgument : "var" "move_air_rotation_drag_timer"
	if(move_air_rotation_drag_timer == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74672D9F
		/// @DnDParent : 3901B8A6
		/// @DnDArgument : "expr" "move_anim_speed * 30"
		/// @DnDArgument : "var" "move_air_rotation_drag_timer"
		move_air_rotation_drag_timer = move_anim_speed * 30;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 098F9175
	/// @DnDParent : 2C40B331
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AD3CF8C
		/// @DnDParent : 098F9175
		/// @DnDArgument : "var" "move_air_rotation_drag_timer"
		/// @DnDArgument : "op" "2"
		if(move_air_rotation_drag_timer > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4794BF46
			/// @DnDParent : 4AD3CF8C
			/// @DnDArgument : "var" "move_x"
			/// @DnDArgument : "not" "1"
			if(!(move_x == 0))
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 6A7590EE
				/// @DnDParent : 4794BF46
				/// @DnDArgument : "speed" "-sign(move_x) / 30"
				/// @DnDArgument : "speed_relative" "1"
				image_speed += -sign(move_x) / 30;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 55686873
				/// @DnDParent : 4794BF46
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				move_air_rotation_drag_timer += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 61406C7B
				/// @DnDParent : 4794BF46
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				if(move_air_rotation_drag_timer == 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 32D07032
					/// @DnDParent : 61406C7B
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "var" "move_air_rotation_drag_timer"
					move_air_rotation_drag_timer = -1;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 78D65F6E
					/// @DnDParent : 61406C7B
					/// @DnDArgument : "speed" "0"
					image_speed = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 06C92259
			/// @DnDParent : 4AD3CF8C
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 15543282
				/// @DnDParent : 06C92259
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				move_air_rotation_drag_timer = -1;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 15F27B92
				/// @DnDParent : 06C92259
				/// @DnDArgument : "speed" "0"
				image_speed = 0;
			}
		}
	}
}