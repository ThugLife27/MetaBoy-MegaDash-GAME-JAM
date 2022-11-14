/// @description Insert description here
// You can write your code in this editor
if (global.room_create_count >= 2150)
{
	config_select = irandom(12);
	enemy_create++;
	
	for (var i = 0; i < array_length(tile_config_x[config_select]); i += 1)
	{
		instance_create_layer(tile_config_x[config_select][i]+2150,tile_config_y[config_select][i],"Walls",oWall);
	}

	if (enemy_create == 2)
	{
		cat_create = irandom(9);
		if(cat_create == 9)
		{
			cat_create_location = irandom(array_length(cat_config_x[config_select])-1);
			instance_create_layer(cat_config_x[config_select][cat_create_location]+2150,cat_config_y[config_select][cat_create_location],"Player",oCat);
		}
		else
		{
			enemy_create_location = irandom(array_length(enemy_config_x[config_select])-1);
			enemy_sprite_selection = enemy_sprites[irandom(4)];
			instance_create_layer(enemy_config_x[config_select][enemy_create_location]+2150,enemy_config_y[config_select][enemy_create_location],"Player",oEnemy,
			{sprite_index : enemy_sprite_selection});
		}
		
		enemy_create = 0;
	}
	global.room_create_count = 0;
	
}
