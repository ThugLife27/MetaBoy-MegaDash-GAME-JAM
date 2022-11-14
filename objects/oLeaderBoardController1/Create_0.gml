/// @description Insert description here
// You can write your code in this editor
global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score;
LootLockerSubmitScore("8831",string(global.RoundAll_Score));

Score_Box = 0;

if (real(string_digits(LLPlayerRank())) <= 15){Score_Box = 0;}
else{Score_Box = 1;}

instance_create_layer(416,832,"Instances",oEndGameScoreBox,
	{image_index : Score_Box});
	
instance_create_layer(1170,930,"Instances",oCursorEndGame);



