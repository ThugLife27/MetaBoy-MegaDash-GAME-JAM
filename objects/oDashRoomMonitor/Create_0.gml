/// @description Insert description here
// You can write your code in this editor
global.gamestart = 0;
game_start_timer = 0;

global.score = 0;
global.scorebonus = 0;
global.scoretotal = 0;

global.roomspeed = 6;
global.multiplier = 1;

global.room_create_count = 2400;

global.player_death = 0;

death_timer = 150;

instance_create_layer(130,35,"Screens",oRound,
{image_index : global.round_number-1});




