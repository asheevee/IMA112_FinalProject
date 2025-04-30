/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5952EE90
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.interact == 1)){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 19116A9E
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "interact"
	global.interact = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 43517662
	/// @DnDComment : resets powerups before restarting the room
	/// @DnDInput : 3
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "value" "global.powerupstate_boss_speed_saved"
	/// @DnDArgument : "value_1" "global.powerupstate_dash_saved"
	/// @DnDArgument : "value_2" "global.powerupstate_jump_saved"
	/// @DnDArgument : "var" "powerupstate_boss_speed"
	/// @DnDArgument : "var_1" "powerupstate_dash"
	/// @DnDArgument : "var_2" "powerupstate_jump"
	global.powerupstate_boss_speed = global.powerupstate_boss_speed_saved;
	global.powerupstate_dash = global.powerupstate_dash_saved;
	global.powerupstate_jump = global.powerupstate_jump_saved;

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1D1DA1F4
	/// @DnDParent : 5952EE90
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Audio_Get_Length
	/// @DnDVersion : 1
	/// @DnDHash : 138939B1
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "sound" "sfx_death"
	/// @DnDSaveInfo : "sound" "sfx_death"
	var _len = audio_sound_length(sfx_death);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 28D70DD0
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "soundid" "sfx_death"
	/// @DnDArgument : "gain" "0.5"
	/// @DnDSaveInfo : "soundid" "sfx_death"
	audio_play_sound(sfx_death, 0, 0, 0.5, undefined, 1.0);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 6B2D0AA4
	/// @DnDApplyTo : other
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "x" "random_range(-16,16)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "random_range(-16,16)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$66666666"
	with(other) effect_create_above(0, x + random_range(-16,16), y + random_range(-16,16), 2, $66666666 & $ffffff);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 24AF38D1
	/// @DnDApplyTo : other
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "x" "random_range(-16,16)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "random_range(-16,16)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$6600A7FF"
	with(other) effect_create_above(0, x + random_range(-16,16), y + random_range(-16,16), 2, $6600A7FF & $ffffff);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 5DA65289
	/// @DnDApplyTo : other
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "x" "random_range(-16,16)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "random_range(-16,16)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	/// @DnDArgument : "color" "$FF0052FF"
	with(other) effect_create_above(0, x + random_range(-16,16), y + random_range(-16,16), 2, $FF0052FF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6BB32508
	/// @DnDApplyTo : other
	/// @DnDParent : 5952EE90
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5F0D4E46
	/// @DnDComment : when alarm goes off: restart the room
	/// @DnDParent : 5952EE90
	/// @DnDArgument : "steps" "round(_len * 60) + 40"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, round(_len * 60) + 40);}