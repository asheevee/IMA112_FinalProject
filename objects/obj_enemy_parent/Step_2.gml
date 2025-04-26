/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FA92C69
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.interact == 1)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1F289367
	/// @DnDParent : 2FA92C69
	/// @DnDArgument : "expr" "move_isGrounded"
	if(move_isGrounded){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DE3DD6F
		/// @DnDParent : 1F289367
		/// @DnDArgument : "var" "move_x"
		/// @DnDArgument : "not" "1"
		if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 38477A8D
			/// @DnDParent : 3DE3DD6F
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_enemy_walk"
			/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
			sprite_index = spr_enemy_walk;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 01137F58
			/// @DnDParent : 3DE3DD6F
			/// @DnDArgument : "xscale" "sign(move_x)"
			image_xscale = sign(move_x);image_yscale = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 775AF2B1
		/// @DnDParent : 1F289367
		else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 444638C4
			/// @DnDParent : 775AF2B1
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_enemy"
			/// @DnDSaveInfo : "spriteind" "spr_enemy"
			sprite_index = spr_enemy;
			image_index += 0;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B6B38C5
	/// @DnDParent : 2FA92C69
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3D2FC00B
		/// @DnDParent : 6B6B38C5
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_jump"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_jump"
		sprite_index = spr_enemy_jump;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B8C5EF5
		/// @DnDParent : 6B6B38C5
		/// @DnDArgument : "var" "move_x"
		/// @DnDArgument : "not" "1"
		if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 28D8219F
			/// @DnDParent : 3B8C5EF5
			/// @DnDArgument : "xscale" "sign(move_x)"
			image_xscale = sign(move_x);image_yscale = 1;}}

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 566F4F6D
	/// @DnDParent : 2FA92C69
	while(true){	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
		/// @DnDVersion : 1
		/// @DnDHash : 25FD3877
		/// @DnDParent : 566F4F6D
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l25FD3877_0 = collision_point(x + 32, y + 0, collision_tilemap, true, 1);if((l25FD3877_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 652577B1
			/// @DnDParent : 25FD3877
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += -1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 60B5BBCF
		/// @DnDParent : 566F4F6D
		else{	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 21E49A3F
			/// @DnDParent : 60B5BBCF
			/// @DnDArgument : "x" "-32"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "obj" "collision_tilemap"
			var l21E49A3F_0 = collision_point(x + -32, y + 0, collision_tilemap, true, 1);if((l21E49A3F_0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2D292199
				/// @DnDParent : 21E49A3F
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += 1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 17C08CB0
			/// @DnDParent : 60B5BBCF
			else{	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 3642ED9F
				/// @DnDParent : 17C08CB0
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "32"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "obj" "collision_tilemap"
				var l3642ED9F_0 = collision_point(x + 0, y + 32, collision_tilemap, true, 1);if((l3642ED9F_0)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7044D27B
					/// @DnDParent : 3642ED9F
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += -1;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 1E9DC010
				/// @DnDParent : 17C08CB0
				else{	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
					/// @DnDVersion : 1
					/// @DnDHash : 621BD782
					/// @DnDParent : 1E9DC010
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-32"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "obj" "collision_tilemap"
					var l621BD782_0 = collision_point(x + 0, y + -32, collision_tilemap, true, 1);if((l621BD782_0)){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6A640F9C
						/// @DnDInput : 3
						/// @DnDParent : 621BD782
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "y"
						/// @DnDArgument : "var_1" "move_y"
						/// @DnDArgument : "var_2" "move_jumpTimer"
						y += 1;
						move_y = 0;
						move_jumpTimer = 0;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 5C917A75
					/// @DnDParent : 1E9DC010
					else{	/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 4682D9A2
						/// @DnDParent : 5C917A75
						break;}}}}}}