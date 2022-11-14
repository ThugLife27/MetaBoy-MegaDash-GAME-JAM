/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_anykey) && string_length(name_text) < 15)
{
	name_text = name_text+string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check(vk_backspace) && keyboard_check_pressed(vk_backspace) && delete_timer = 2)
{
	name_text = string_delete(name_text,string_length(name_text),1);
	delete_timer = 0;
	keyboard_string = "";
}

if(keyboard_check_pressed(vk_backspace))
{
	name_text = string_delete(name_text,string_length(name_text),1);
	keyboard_string = "";
	delete_timer = -4;
}

if(delete_timer != 2)
{delete_timer++;}

if(keyboard_check_pressed(vk_enter) && string_length(name_text)>0)
{Submission_Ready = 1;}

if (Submission_Ready == 1)
{
	if(delay_timer == 0)
	{
	LootLockerSetPlayerName(name_text);
	LootLockerSubmitScore("8752",string(global.RoundAll_Score));
	audio_play_sound(CharSelectMove,10,false);
	global.New_High_Score = 0;
	instance_create_layer(x,y,"Instances",oHighScoreSubmitted);
	instance_create_layer(1170,930,"Instances",oCursorEndGame);
	instance_destroy();
	}
	delay_timer--;
}

