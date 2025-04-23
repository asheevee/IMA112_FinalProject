/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6BF26668
/// @DnDComment : decide what to do based on the tone
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "tone_type"
with(other) var l6BF26668_0 = tone_type;
switch(l6BF26668_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3D542476
	/// @DnDParent : 6BF26668
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1CE056B4
		/// @DnDParent : 3D542476
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.powerupstate_jump"
		global.powerupstate_jump += 1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 65799EBA
	/// @DnDParent : 6BF26668
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0B9DB783
		/// @DnDParent : 65799EBA
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.powerupstate_dash"
		global.powerupstate_dash += 1;
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 5E41C25E
	/// @DnDParent : 6BF26668
	default:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0C4521F2
		/// @DnDParent : 5E41C25E
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.powerupstate_boss_speed"
		global.powerupstate_boss_speed += 1;
		break;
}

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 667EE174
effect_create_below(0, 0, 0, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 07F2F786
/// @DnDComment : allows one audio file to play 12 different collection jingles
/// @DnDApplyTo : other
/// @DnDArgument : "gain" "0.5"
/// @DnDArgument : "pitch" "2 ^ (tone_note / 12)"
with(other)

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10AB73DA
/// @DnDApplyTo : other
with(other) instance_destroy();