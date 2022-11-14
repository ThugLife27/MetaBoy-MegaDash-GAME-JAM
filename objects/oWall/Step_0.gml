/// @description Insert description here
// You can write your code in this editor

global.hsp_oWall = -global.roomspeed;
x = x + global.hsp_oWall;

if (x < -200)
{instance_destroy();}