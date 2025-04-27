/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 31861C62
/// @DnDComment : powerup states keep track of collected tones across levels$(13_10)$(13_10)global.interact controls player control:$(13_10)0: player can be controlled as normal$(13_10)1: all player and enemy movement is halted and input disregarded$(13_10)2: same as 1, but enemy movement is *not* halted$(13_10)3: player input is ignored, but movement is not halted
/// @DnDInput : 7
/// @DnDArgument : "var" "powerupstate_jump"
/// @DnDArgument : "var_1" "powerupstate_dash"
/// @DnDArgument : "var_2" "powerupstate_boss_speed"
/// @DnDArgument : "var_3" "interact"
/// @DnDArgument : "var_4" "powerupstate_jump_saved"
/// @DnDArgument : "var_5" "powerupstate_dash_saved"
/// @DnDArgument : "var_6" "powerupstate_boss_speed_saved"
global.powerupstate_jump = 0;
global.powerupstate_dash = 0;
global.powerupstate_boss_speed = 0;
global.interact = 0;
global.powerupstate_jump_saved = 0;
global.powerupstate_dash_saved = 0;
global.powerupstate_boss_speed_saved = 0;