if(global.pause == 0)
{

//Get Player Input
if (controller_lockout == 1)
	{
		key_jump_start = 0
		key_jump = 0
		key_dash_start = 0
	}
	
else
{
key_jump_start = max(keyboard_check_pressed(ord("Z")),gamepad_button_check_pressed(0,gp_face1));
key_jump = max(keyboard_check(ord("Z")),gamepad_button_check(0,gp_face1))
key_dash_start = max(keyboard_check_pressed(ord("X")),gamepad_button_check_pressed(0,gp_face3));
}
 
 vsp = vsp + grv;

	//Dash
	// Enter Dash Mode, lockout jump and re-dash
	if (key_dash_start == 1 && dash_counter < 2 && global.dash_mode == 0 && !place_meeting(x,y,oWall))
	{
		global.dash_mode = 1;
		controller_lockout = 1;
		sprite_index = sFighterKick;
		image_index = 0;
		image_speed = 1.2;
		dash_timer = 0;
	}
	
	//Execute Dash
	if (global.dash_mode == 1)
	{
		vsp = 0;
		
		if (floor(image_index) == 6)
		{
			if(!audio_is_playing(SoundFighterJump2))
			{audio_play_sound(SoundFighterJump2,10,false);}
		}
		if (floor(image_index) == 7 && hsp >= 0) 
			{
				image_speed = 0;
				hsp = 10*cos(dash_timer*pi/18);
				dash_timer++;
			}
		
		if (hsp < 0 && x > 256)
			{
				sprite_index = sFighterRun; 
				image_index = 10;
				if(dash_timer > 18){dash_timer = 18;}
				hsp = 10*cos(dash_timer*pi/18)
				dash_timer++;	
			}
		
		x = x + hsp;
			
		if (hsp < 0 && x < 256)
		{
			x = 256;
			global.dash_mode = 0;
			dash_timer = 0;
			hsp = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
	}
		

	//Jump
	if (key_jump_start == 1 && jump_counter < 2)
	{ 
		vsp = -30;
		jump_counter = jump_counter + 1;
		Fighter_Sound_Pick = irandom(1);
		if (Fighter_Sound_Pick == 0){audio_play_sound(SoundFighterJump1,10,false);}
		else {audio_play_sound(SoundFighterJump3,10,false);}
	}
	
	if (vsp < 0 && key_jump == 0)
	{vsp = 0;}

	//Horizontal Collision
if (place_meeting(x+1,y,oWall))
	{
		//If dashing and hit wall, exit dash mode
		if(global.dash_mode = 1)
		{
			global.dash_mode = 0; 
			dash_timer = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter = 1;
		}
		
		while(place_meeting(x,y,oWall)){x--;}
	hsp = global.hsp_oWall;
	x = x + global.hsp_oWall;
	}
else if (x < 256 && global.dash_mode == 0)
	{
		hsp = 8;
		x = x + hsp;
		if (x > 256){x = 256; hsp = 0;}
	}
else if (x > 256 && global.dash_mode == 0)
	{
		hsp = -8;
		x = x + hsp;
		if (x < 256){x = 256; hsp = 0;}
	}
	//Vertical Collision
	if (place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
		jump_counter = 0;
		dash_counter = 0;
	}
	
	if (place_meeting(x,y+vsp,oCeil))
	{
		while(!place_meeting(x,y+sign(vsp),oCeil))
		{
			y = y + sign(vsp);
		}
		if(vsp < 0){vsp = 0;}
	}
	y = y + vsp;

	//Animation
	if (!place_meeting(x,y+1,oWall) && global.dash_mode == 0)
	{
		sprite_index = sFighterRun;
		image_speed = 0;
		if (sign(vsp)>0) 
		{image_index = 4;} 
		else 
		{image_index=10;}
	}
	else if (global.dash_mode == 0)
	{
		image_speed = 1;
	}
		

if (y > 1220){global.player_death = 1;}
if (x < -80){global.player_death = 1;}

if(global.player_death == 1)
{
	i = 0;
	audio_play_sound(SoundPlayerDeath,10,false);
	audio_play_sound(SoundPlayerScream,10,false);
	repeat(16)
		{instance_create_layer(oPlayer.x,oPlayer.y,"Player",oPlayerDeath,
			{direction : pi/8*i});
			i++;
		}
	i = 0;
	instance_destroy();
}

}