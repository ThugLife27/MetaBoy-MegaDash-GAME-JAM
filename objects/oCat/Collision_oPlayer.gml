/// @description Insert description here
// You can write your code in this editor

	audio_play_sound(SoundCatTouch,10,false,15);
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : 5+global.multiplier-2});
	global.scorebonus = global.scorebonus + 500 + 100*global.multiplier-100;
	global.multiplier = global.multiplier + 3;
	if(global.multiplier > 10){global.multiplier = 10;}
	instance_destroy();


