/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4A781108
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "interact"
global.interact = 1;

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 62569056
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 08C8B8E3
/// @DnDArgument : "soundid" "sfx_goal"
/// @DnDSaveInfo : "soundid" "sfx_goal"
audio_play_sound(sfx_goal, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 6DC8FB04
while(true){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 328C1234
	/// @DnDParent : 6DC8FB04
	/// @DnDArgument : "soundid" "sfx_goal"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "sfx_goal"
	var l328C1234_0 = sfx_goal;if (!audio_is_playing(l328C1234_0)){	/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 6D227503
		/// @DnDParent : 328C1234
		break;}}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7F27CE87
/// @DnDArgument : "var" "interact"
global.interact = 0;

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 42BE63B5
if(room == room_last){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4E9060BA
	/// @DnDParent : 42BE63B5
	/// @DnDArgument : "room" "rm_title"
	/// @DnDSaveInfo : "room" "rm_title"
	room_goto(rm_title);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 56F94A64
else{	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3EFB9FA2
	/// @DnDParent : 56F94A64
	room_goto_next();}