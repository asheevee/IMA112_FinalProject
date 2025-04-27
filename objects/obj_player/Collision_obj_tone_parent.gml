/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A74C8A5
/// @DnDComment : //DISABLED, EVENT IS IN THE TONE OBJECT INSTEAD$(13_10)$(13_10)make sure this event only happens once
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 04DB155A
/// @DnDDisabled : 1
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "interact"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6BF26668
/// @DnDComment : decide what to do based on the tone
/// @DnDDisabled : 1
/// @DnDApplyTo : other
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "expr" "tone_type"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 3D542476
/// @DnDDisabled : 1
/// @DnDParent : 6BF26668
/// @DnDArgument : "const" "1"
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1CE056B4
/// @DnDDisabled : 1
/// @DnDParent : 3D542476
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "powerupstate_jump"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F5888E5
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 3D542476
/// @DnDArgument : "expr" "16"
/// @DnDArgument : "expr_1" "34"
/// @DnDArgument : "var" "move_jumpSpeed"
/// @DnDArgument : "var_1" "move_jumpTimer_init"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 65799EBA
/// @DnDDisabled : 1
/// @DnDParent : 6BF26668
/// @DnDArgument : "const" "2"
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0B9DB783
/// @DnDDisabled : 1
/// @DnDParent : 65799EBA
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "powerupstate_dash"

/// @DnDAction : YoYo Games.Switch.Default
/// @DnDVersion : 1
/// @DnDHash : 5E41C25E
/// @DnDDisabled : 1
/// @DnDParent : 6BF26668
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0C4521F2
/// @DnDDisabled : 1
/// @DnDParent : 5E41C25E
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "powerupstate_boss_speed"

/// @DnDAction : YoYo Games.Audio.Audio_Get_Length
/// @DnDVersion : 1
/// @DnDHash : 3AD55DA2
/// @DnDDisabled : 1
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "var" "_len"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "sound" "sfx_collect_tone_A"
/// @DnDSaveInfo : "sound" "sfx_collect_tone_A"


/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 07F2F786
/// @DnDComment : allows one audio file to play 12 different collection jingles
/// @DnDDisabled : 1
/// @DnDApplyTo : other
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "soundid" "sfx_collect_tone_A"
/// @DnDArgument : "gain" "0.5"
/// @DnDArgument : "pitch" "2 ^ (tone_note / 12)"
/// @DnDSaveInfo : "soundid" "sfx_collect_tone_A"


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 40F695E2
/// @DnDComment : when alarm goes off: restore control, destroy instance$(13_10)make sure the instance gets destroyed first so this event doesn't happen again
/// @DnDDisabled : 1
/// @DnDApplyTo : other
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "steps" "round(_len * 60) - 1"


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 693FA634
/// @DnDDisabled : 1
/// @DnDParent : 5A74C8A5
/// @DnDArgument : "steps" "round(_len * 60)"