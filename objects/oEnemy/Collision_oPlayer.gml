/// @description Insert description here
// You can write your code in this editor

if (enemy_dead == 0 && global.dash_mode == 1 && oPlayer.hsp >= 0)
{
	audio_play_sound(SoundBigHit,10,false,2);
	if(sprite_index = sEnemy5)
	{
		audio_play_sound(SoundBonus,10,false,15);
		instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : 2*global.multiplier-1});
		global.scorebonus = global.scorebonus + 200*global.multiplier;
		global.multiplier = global.multiplier + 2;
		if(global.multiplier > 10) {global.multiplier = 10;}
	}
	else
	{
			global.scorebonus = global.scorebonus + 100*global.multiplier;
			instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : global.multiplier-1});
			if(global.multiplier < 10)
			{global.multiplier = global.multiplier + 1;}
	}
	
	enemy_dead = 1;
	image_speed = 0;
	hsp = 30;
	vsp = -25;
}

if (enemy_dead == 0 && (global.dash_mode == 0 || oPlayer.hsp < 0))
{
	global.player_death = 1;
}
