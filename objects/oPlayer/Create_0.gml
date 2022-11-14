//Define Sprite from Character Selection
sprite_index = sFighterRun;

global.player_death = 0;

//Initialize Movement
hsp = 0;
vsp = 0;
grv = 1.05;

//Intialize Various Variables
controller_lockout = 0;

jump_counter = 0;
jump_counter_max = 2;

//Intialize Dash
global.dash_mode = 0;
dash_timer = 0;
dash_cd = 0;
dash_counter = 0;

//Initialize Controls
key_jump_start = 0;
key_jump = 0;

flash = 0;
Fighter_Sound_Pick = 0;