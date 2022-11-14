/// @description Insert description here
// You can write your code in this editor

//Get Input
if(cooldown == 0)
{
	if (max(gamepad_axis_value(0,gp_axislv),0) > .33)
	{gamepad_down = 1;}
	else {gamepad_down = 0;}

	if (abs(min(gamepad_axis_value(0,gp_axislv),0)) > .33)
	{gamepad_up = 1;}
	else {gamepad_up = 0;}

	key_up = max(keyboard_check(vk_up),gamepad_up);
	key_down = max(keyboard_check(vk_down),gamepad_down);
}
else
{
	key_up = 0;
	key_down = 0;
}

if (key_up == 1 && y_col > 0)
{
	y = y - y_diff;
	y_col--;
	cooldown = 10;
	audio_play_sound(CharSelectMove,10,false);
	GameOver_Selection = GameOver_Selection - 1;
}

if (key_down == 1 && y_col < 2)
{
	y = y + y_diff;
	y_col++;
	cooldown = 10;
	audio_play_sound(CharSelectMove,10,false);
	GameOver_Selection = GameOver_Selection + 1;
}

if (cooldown > 0)
{cooldown--;}

key_enter = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face1))

if(key_enter == 1)
{
	switch(GameOver_Selection)
	{
		case 0:
			room_restart();
		break
		
		case 1:
			room_goto(CharacterSelect);
		break
		
		case 2:
			room_goto(StartRoom);
	}
}

