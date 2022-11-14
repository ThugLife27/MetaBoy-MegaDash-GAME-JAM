/// @description Insert description here
// You can write your code in this editor
if(enemy_dead == 0)
{x = x - global.roomspeed;}

if(enemy_dead == 1)
{
	x = x + hsp;
	y = y + vsp;
	vsp = vsp + grv;
	image_angle = image_angle + 6;
}

if(x < -100)
{
	global.multiplier = 1;
	instance_destroy();
}

if(enemy_dead == 1 && x > 1800){instance_destroy();}


