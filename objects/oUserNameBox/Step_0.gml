/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_anykey) && string_length(name_text) < 15)
{
	name_text = name_text+string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check_pressed(vk_backspace))
{
	name_text = string_delete(name_text,string_length(name_text),1);
	keyboard_string = "";
}

if(keyboard_check_pressed(vk_enter) && string_length(name_text)>0)
{Submission_Ready = 1;}

if (Submission_Ready == 1)
{
	if(delay_timer == 0)
	{
	global.Player_Name = name_text;
	LootLockerSetPlayerName(name_text);
	audio_play_sound(StartMenuSelect,10,false);
	instance_create_layer(x,y,"Instances",oUserNameBoxFilled);
	instance_create_layer(1100,803,"Instances",oCursorStartRoom1)
	instance_destroy();
	}
	delay_timer--;
}