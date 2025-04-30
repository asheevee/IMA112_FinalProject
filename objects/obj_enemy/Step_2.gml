/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F188005
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.interact == 1)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 481DEA0E
	/// @DnDParent : 7F188005
	/// @DnDArgument : "expr" "move_isGrounded"
	if(move_isGrounded){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7A5420B6
		/// @DnDParent : 481DEA0E
		image_speed = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 01E34752
	/// @DnDParent : 7F188005
	else{	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 30234A44
		/// @DnDParent : 01E34752
		/// @DnDArgument : "speed" "0.5"
		image_speed = 0.5;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34F658DE
	/// @DnDParent : 7F188005
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "not" "1"
	if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1030705E
		/// @DnDParent : 34F658DE
		/// @DnDArgument : "xscale" "sign(move_x) * (1 + (8 - global.powerupstate_boss_speed) / 2)"
		/// @DnDArgument : "yscale" "1 + (8 - global.powerupstate_boss_speed) / 2"
		image_xscale = sign(move_x) * (1 + (8 - global.powerupstate_boss_speed) / 2);image_yscale = 1 + (8 - global.powerupstate_boss_speed) / 2;}

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7CAFE6F3
	/// @DnDComment : push the player out of any collision
	/// @DnDParent : 7F188005
	while(true){	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 1DCBB472
		/// @DnDParent : 7CAFE6F3
		/// @DnDArgument : "x1" "bbox_left - 1"
		/// @DnDArgument : "y1" "bbox_top + 1"
		/// @DnDArgument : "x2" "bbox_left - 1"
		/// @DnDArgument : "y2" "bbox_bottom - 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l1DCBB472_0 = collision_line(bbox_left - 1, bbox_top + 1, bbox_left - 1, bbox_bottom - 1, collision_tilemap, true, 1);if((l1DCBB472_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 745FDD8D
			/// @DnDParent : 1DCBB472
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += 1;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 23A07297
		/// @DnDParent : 7CAFE6F3
		/// @DnDArgument : "x1" "bbox_right + 1"
		/// @DnDArgument : "y1" "bbox_top + 1"
		/// @DnDArgument : "x2" "bbox_right + 1"
		/// @DnDArgument : "y2" "bbox_bottom - 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l23A07297_0 = collision_line(bbox_right + 1, bbox_top + 1, bbox_right + 1, bbox_bottom - 1, collision_tilemap, true, 1);if((l23A07297_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0712F8A7
			/// @DnDParent : 23A07297
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += -1;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 24F8FF1A
		/// @DnDParent : 7CAFE6F3
		/// @DnDArgument : "x1" "bbox_left + 1"
		/// @DnDArgument : "y1" "bbox_top + 1"
		/// @DnDArgument : "x2" "bbox_right - 1"
		/// @DnDArgument : "y2" "bbox_top + 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l24F8FF1A_0 = collision_line(bbox_left + 1, bbox_top + 1, bbox_right - 1, bbox_top + 1, collision_tilemap, true, 1);if((l24F8FF1A_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A28326F
			/// @DnDParent : 24F8FF1A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += 1;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 0B676174
		/// @DnDParent : 7CAFE6F3
		/// @DnDArgument : "x1" "bbox_left + 1"
		/// @DnDArgument : "y1" "bbox_bottom - 1"
		/// @DnDArgument : "x2" "bbox_right - 1"
		/// @DnDArgument : "y2" "bbox_bottom - 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		var l0B676174_0 = collision_line(bbox_left + 1, bbox_bottom - 1, bbox_right - 1, bbox_bottom - 1, collision_tilemap, true, 1);if((l0B676174_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50452C9D
			/// @DnDParent : 0B676174
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += -1;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 094560BB
		/// @DnDParent : 7CAFE6F3
		/// @DnDArgument : "x1" "bbox_left"
		/// @DnDArgument : "y1" "bbox_top + 1"
		/// @DnDArgument : "x2" "bbox_right"
		/// @DnDArgument : "y2" "bbox_bottom - 1"
		/// @DnDArgument : "obj" "collision_tilemap"
		/// @DnDArgument : "shape" "1"
		/// @DnDArgument : "not" "1"
		var l094560BB_0 = collision_rectangle(bbox_left, bbox_top + 1, bbox_right, bbox_bottom - 1, collision_tilemap, true, 1);if(!(l094560BB_0)){	/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 37B7C596
			/// @DnDParent : 094560BB
			break;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2B1A1843
else{	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 639A215E
	/// @DnDParent : 2B1A1843
	/// @DnDArgument : "speed" "0"
	image_speed = 0;}