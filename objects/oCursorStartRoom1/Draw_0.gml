/// @description Insert description here
// You can write your code in this editor

draw_self();

if (flash > 0)
{
		flash --;
		if (frac(flash/4) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}

