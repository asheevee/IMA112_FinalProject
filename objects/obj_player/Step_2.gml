/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BEBF502
/// @DnDArgument : "var" "global.interact"
if(global.interact == 0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 63FA87B3
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "expr" "move_isGrounded"
	if(move_isGrounded){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34F658DE
		/// @DnDParent : 63FA87B3
		/// @DnDArgument : "var" "move_x"
		/// @DnDArgument : "not" "1"
		if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
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
			image_xscale = sign(move_x);image_yscale = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3D13D235
		/// @DnDParent : 63FA87B3
		else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 03D2C48A
			/// @DnDParent : 3D13D235
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_player"
			/// @DnDSaveInfo : "spriteind" "spr_player"
			sprite_index = spr_player;
			image_index += 0;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65DE64E8
	/// @DnDParent : 0BEBF502
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 17F74EC8
		/// @DnDParent : 65DE64E8
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_jump"
		/// @DnDSaveInfo : "spriteind" "spr_player_jump"
		sprite_index = spr_player_jump;
		image_index += 0;}}