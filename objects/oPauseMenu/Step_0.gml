/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape) == 1 || gamepad_button_check_pressed(0,gp_face2) == 1)
{
	instance_destroy(oGameOverCursor);
	global.pause = 0;
	instance_destroy();
}

