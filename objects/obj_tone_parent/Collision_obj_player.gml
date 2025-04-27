/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FCD5B3D
/// @DnDComment : //this event is in the tone object rather than the player object$(13_10)//in order to have all the children inherit it$(13_10)$(13_10)make sure this only runs once
/// @DnDArgument : "var" "global.interact"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.interact == 1)){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7AD2A881
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "interact"
	global.interact = 1;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 03D00111
	/// @DnDComment : decide what to do based on the tone
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "expr" "tone_type"
	var l03D00111_0 = tone_type;switch(l03D00111_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 513FE79C
		/// @DnDParent : 03D00111
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5C5E222C
			/// @DnDParent : 513FE79C
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "powerupstate_jump"
			global.powerupstate_jump += 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7DF5B06D
			/// @DnDInput : 2
			/// @DnDApplyTo : other
			/// @DnDParent : 513FE79C
			/// @DnDArgument : "expr" "16"
			/// @DnDArgument : "expr_1" "34"
			/// @DnDArgument : "var" "move_jumpSpeed"
			/// @DnDArgument : "var_1" "move_jumpTimer_init"
			with(other) {
			move_jumpSpeed = 16;
			move_jumpTimer_init = 34;
			
			}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 32050503
		/// @DnDParent : 03D00111
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 46FFD94D
			/// @DnDParent : 32050503
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "powerupstate_dash"
			global.powerupstate_dash += 1;	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 30089EF9
		/// @DnDParent : 03D00111
		default:	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5270779C
			/// @DnDParent : 30089EF9
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "powerupstate_boss_speed"
			global.powerupstate_boss_speed += 1;	break;}

	/// @DnDAction : YoYo Games.Audio.Audio_Get_Length
	/// @DnDVersion : 1
	/// @DnDHash : 23889D83
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "sound" "tone_sound"
	var _len = audio_sound_length(tone_sound);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A1D2C62
	/// @DnDComment : so apparently this doesn't work the way i wanted it to$(13_10)and i do indeed need 12 different audio files
	/// @DnDDisabled : 1
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "soundid" "sfx_collect_tone_A"
	/// @DnDArgument : "gain" "0.5"
	/// @DnDArgument : "pitch" "2 ^ (tone_note / 12)"
	/// @DnDSaveInfo : "soundid" "sfx_collect_tone_A"


	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 139A7E25
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "soundid" "tone_sound"
	/// @DnDArgument : "gain" "0.5"
	audio_play_sound(tone_sound, 0, 0, 0.5, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 47BF6ADF
	/// @DnDComment : when alarm goes off: restore control, destroy instance$(13_10)make sure the instance gets destroyed first so this event doesn't happen again
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "steps" "round(_len * 60) - 1"
	alarm_set(0, round(_len * 60) - 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1E1EE7E3
	/// @DnDApplyTo : other
	/// @DnDParent : 5FCD5B3D
	/// @DnDArgument : "steps" "round(_len * 60)"
	with(other) {
	alarm_set(0, round(_len * 60));
	
	}}