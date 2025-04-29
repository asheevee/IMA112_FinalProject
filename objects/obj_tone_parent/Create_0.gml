/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 73C8F049
/// @DnDArgument : "colour" "tone_color"
image_blend = tone_color & $ffffff;
image_alpha = (tone_color >> 24) / $ff;