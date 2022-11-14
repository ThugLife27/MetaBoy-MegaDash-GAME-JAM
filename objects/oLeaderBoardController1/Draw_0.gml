/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(1100,316,string(global.Round1_Score));
draw_text(1100,460,string(global.Round2_Score));
draw_text(1100,620,string(global.Round3_Score));
draw_text(1100,808,string(global.RoundAll_Score));

draw_set_font(Font4);
draw_text(208,893,Player_Rank);
draw_text(422,893,Player_Score);

draw_set_font(Font3);
draw_set_halign(fa_left);
draw_text(236,759,global.Player_Name);

