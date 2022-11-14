/// @description Insert description here
// You can write your code in this editor
if(global.pause == 0)
{

	vsp = vsp + grv;
	
if (place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
		if(fight_start ==0)
		{instance_create_layer(695,433,"Player",oFightRoomReady);fight_start=1;}
	}
	y = y + vsp;

	//Animation
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sFighterRun;
		image_speed = 0;
		if (sign(vsp)>0) image_index = 4; else image_index=10;
	}
	else
	{
		sprite_index = sFighter;
	}
}