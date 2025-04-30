/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 45FA28FE
/// @DnDInput : 7
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "powerupstate_jump"
/// @DnDArgument : "var_1" "powerupstate_dash"
/// @DnDArgument : "var_2" "powerupstate_boss_speed"
/// @DnDArgument : "var_3" "interact"
/// @DnDArgument : "var_4" "powerupstate_jump_saved"
/// @DnDArgument : "var_5" "powerupstate_dash_saved"
/// @DnDArgument : "var_6" "powerupstate_boss_speed_saved"
global.powerupstate_jump = 1;
global.powerupstate_dash = 1;
global.powerupstate_boss_speed = 0;
global.interact = 0;
global.powerupstate_jump_saved = 0;
global.powerupstate_dash_saved = 0;
global.powerupstate_boss_speed_saved = 0;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 32049CF0
/// @DnDComment : quick access for testing purposes
/// @DnDArgument : "room" "rm_level2"
/// @DnDSaveInfo : "room" "rm_level2"
room_goto(rm_level2);