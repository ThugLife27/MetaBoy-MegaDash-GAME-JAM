/// @description Insert description here
// You can write your code in this editor

if(global.pause == 0)
{
//SCORE TIMER
	score_timer--;
	if(score_timer == 0)
	{global.score--;score_timer = 60;}
	
	if(global.multiplier > 1)
	{
	global.multiplier_timer--;
	if(global.multiplier_timer == 0)
	{global.multiplier = 1;global.multiplier_timer = 180}
	}
	
}
