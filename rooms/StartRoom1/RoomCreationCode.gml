if(!audio_is_playing(StartMusic))
{audio_play_sound(StartMusic,10,true);}

instance_create_layer(800,629,"Instances",oStartMenuFighter);

if(is_undefined(global.Player_Name))
{instance_create_layer(832,896,"Instances",oUserNameBox);}
else
{
	instance_create_layer(832,896,"Instances",oUserNameBoxFilled);
	instance_create_layer(1100,803,"Instances",oCursorStartRoom1);
}


