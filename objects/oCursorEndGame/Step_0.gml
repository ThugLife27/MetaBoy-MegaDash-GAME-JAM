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
	Start_Selection = Start_Selection - 1;
}

if (key_down == 1 && y_col < 2)
{
	y = y + y_diff;
	y_col++;
	cooldown = 10;
	audio_play_sound(CharSelectMove,10,false);
	Start_Selection = Start_Selection + 1;
}

if (cooldown > 0)
{cooldown--;}

key_enter = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face1))

if(key_enter == 1)
{
	ready_check = 1;	
	flash = 20;
	audio_play_sound(StartMenuSelect,10,false);
}

if (ready_check = 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
	switch(Start_Selection)
	{
		case 0:
			room_goto(Leaderboard);
		break
		
		case 1:
			global.Round1_Score = 0;
			global.Round2_Score = 0;
			global.Round3_Score = 0;
			global.round_number = 1;
			room_goto(DashRoom);
		break
		
		case 2:
			global.Round1_Score = 0;
			global.Round2_Score = 0;
			global.Round3_Score = 0;
			global.round_number = 1;
			room_goto(StartRoom1);
		break
	}
	}
}