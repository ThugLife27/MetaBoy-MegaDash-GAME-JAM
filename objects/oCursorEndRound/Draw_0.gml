/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.Round1_Score > 0)
{
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(1100,316,string(global.Round1_Score));
}

if (global.Round2_Score > 0)
{
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(1100,460,string(global.Round2_Score));
}

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(1099,808,string(global.RoundAll_Score));