/// @description Insert description here
// You can write your code in this editor

if(global.gamestart == 0)
{
	global.room_create_count = global.room_create_count + global.roomspeed;
	game_start_timer++;
	if(game_start_timer == 30){instance_create_layer(600,450,"Screens",oCantStop)}
	if(game_start_timer == 90){instance_create_layer(1000,450,"Screens",oWontStop)}
	if(game_start_timer == 180){instance_create_layer(800,450,"Screens",oRoundStart,{image_index : global.round_number-1});}
	if(game_start_timer == 260){instance_create_layer(800,450,"Screens",oLFG)};
	if(game_start_timer == 320){global.gamestart = 1; game_start_timer = 0;global.roomspeed = 9;}
}

if(global.gamestart == 1)
{

//Update Score while Player is alive
if(global.player_death == 0)
	{
		global.score++
		global.scoretotal = global.scorebonus + global.score
		global.roomspeed = 9 + floor(global.score/250) + (global.dash_mode*global.roomspeed*.4);
		global.room_create_count = global.room_create_count + global.roomspeed;
	}

//PLAYER DEATH
if(global.player_death == 1)
{
	
	if (death_timer == 0)
		{
			switch (global.round_number)
			{
			case 1:
			global.Round1_Score = global.scoretotal;
			room_goto(EndRound1);
			break
			
			case 2:
			global.Round2_Score = global.scoretotal;
			room_goto(EndRound2);
			break
			
			case 3:
			global.Round3_Score = global.scoretotal;
			room_goto(EndGame);
			break
			}
		}
	else{death_timer--;}
}
}