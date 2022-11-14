/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font4);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for (var i = 0; i < 15; i += 1)
{
draw_text(227,370+37*i,LB_Ranks[i]);
draw_text(756,370+37*i,LB_Names[i]);
draw_text(1330,370+37*i,LB_Scores[i]);
}