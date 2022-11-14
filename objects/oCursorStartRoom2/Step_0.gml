/// @description Insert description here
// You can write your code in this editor

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
		room_goto(DashRoom);
	}
}


