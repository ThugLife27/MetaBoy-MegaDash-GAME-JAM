/// @description Insert description here
// You can write your code in this editor

config_select = 0;
enemy_create = 1;
enemy_sprites = [sEnemy1, sEnemy2, sEnemy3, sEnemy4, sEnemy5];
enemy_sprite_selection = 0;

tile_config_x[0] = [1856,1984,2112,2848,2976,3104,2848,2976,3104];
tile_config_y[0] = [960,960,960,960,960,960,416,416,416];
enemy_config_x[0] = [2112,3104,3104];
enemy_config_y[0] = [960-64,960-64,416-64];
cat_config_x[0] = [3104];
cat_config_y[0] = [416-64];

tile_config_x[1] = [1824,1952,2080,2208,2336,2464,2592,2720,2848,2976,3104,2336,2464,2592,2336,2464,2592];
tile_config_y[1] = [640,640,640,640,640,640,640,640,640,640,640,512,512,512,1120,1120,1120];
enemy_config_x[1] = [3104,2592];
enemy_config_y[1] = [640-64,512-64];
cat_config_x[1] = [2848,2592];
cat_config_y[1] = [640-64,1120-64];

tile_config_x[2] = [1888,1888,1888,1888,1888,2016,2144,2272,2400,2528,2528,2528,2528,2528,2656,2784,2912,3040];
tile_config_y[2] = [320,448,576,704,1120,1120,1120,1120,1120,1120,64,192,864,992,864,864,864,864];
enemy_config_x[2] = [2912];
enemy_config_y[2] = [864-64];
cat_config_x[2] = [1888,2400];
cat_config_y[2] = [320-64,1120-64];

tile_config_x[3] = [2016,2144,2720,2848,2976,3104,1888,2016,2144,2272,2720,2848,2976,3104,2720,2720,2848,2976,3104];
tile_config_y[3] = [1120,1120,1120,1120,1120,1120,640,640,640,640,640,640,640,640,512,384,384,384,384];
enemy_config_x[3] = [3104,2272,2976];
enemy_config_y[3] = [1120-64,640-64,384-64];
cat_config_x[3] = [2144,2976];
cat_config_y[3] = [1120-64,2976-64];

tile_config_x[4] = [2016,2592,3136,1888,2016,2720,2848,1888,2976,3104,2304,2432];
tile_config_y[4] = [256,256,256,640,640,640,640,1120,1120,1120,960,960];
enemy_config_x[4] = [2016,2848,3104];
enemy_config_y[4] = [640-64,640-64,1120-64];
cat_config_x[4] = [3136];
cat_config_y[4] = [256-64];

tile_config_x[5] = [1888,2976,3104,2336,2336,2944,2944,2944];
tile_config_y[5] = [1120,1120,1120,224,352,480,608,736];
enemy_config_x[5] = [3104,2944];
enemy_config_y[5] = [1120-64,480-64];
cat_config_x[5] = [2336,2944];
cat_config_y[5] = [224-64,480-64];

tile_config_x[6] = [1920,1920,2048,2176,2304,1920,2048,2176,2304,2816,2944,3072,2816,2944,3072];
tile_config_y[6] = [352,864,864,864,864,992,992,992,992,448,448,448,960,960,960];
enemy_config_x[6] = [1920,3072];
enemy_config_y[6] = [864-64,960-64];
cat_config_x[6] = [1920,2944];
cat_config_y[6] = [352-64,448-64];

tile_config_x[7] = [1920,2048,2176,2304,1920,2048,2176,2304,2624,2624,3008,3136,2624,2752,2880,3008,3136];
tile_config_y[7] = [352,352,352,352,960,960,960,960,576,704,576,576,1120,1120,1120,1120,1120];
enemy_config_x[7] = [1920,3136];
enemy_config_y[7] = [960-64,1120-64];
cat_config_x[7] = [2176,3136];
cat_config_y[7] = [576-64,1120-64];

tile_config_x[8] = [1888,2016,2144,1888,2016,2144,1888,2016,2144,2816,2944,3072,2720,2848,2976,3104,3232,3360,3360,2816,2944,3072,2816,2944,3072];
tile_config_y[8] = [512,512,512,640,640,640,768,768,768,512,512,512,1120,1120,1120,1120,1120,1120,992,640,640,640,768,768,768];
enemy_config_x[8] = [1888,2944];
enemy_config_y[8] = [512-64,512-64];
cat_config_x[8] = [2976];
cat_config_y[8] = [1120-64];

tile_config_x[9] = [1920,2048,2464,2592,2720,3072,3200,3328,2624,2752,2880,3008,3136,3264];
tile_config_y[9] = [1120,992,544,416,288,448,448,448,1056,1056,1056,1056,1056,1056];
enemy_config_x[9] = [3008];
enemy_config_y[9] = [1056-64];
cat_config_x[9] = [2720,3072];
cat_config_y[9] = [288-64,448-64];

tile_config_x[10] = [1664,1792,1920,2048,2176,2304,2816,2944,3072,3200,3328,1664,1792,2176,2304,2432,2560,2688,2816,2944,3072,2816,2944];
tile_config_y[10] = [800,800,800,800,800,800,800,800,800,800,800,384,384,384,384,384,384,384,384,384,384,256,256];
enemy_config_x[10] = [2176,2816];
enemy_config_y[10] = [800-64,800-64];
cat_config_x[10] = [2816];
cat_config_y[10] = [256-64];

tile_config_x[11] = [1792,1792,1792,2336,2336,1984,2112,2240,2816,2944,3072,2528,2528,3072,3200,3072,3200];
tile_config_y[11] = [288,416,544,32,160,1024,1024,1024,1024,1024,1024,576,704,576,576,192,192];
enemy_config_x[11] = [2816];
enemy_config_y[11] = [1024-64];
cat_config_x[11] = [3200];
cat_config_y[11] = [192-64];

tile_config_x[12] = [2048,2176,2304,2432,2560,2688,2816,2944,3072,2048,3072,2432,2560,2688,2048,2176,2304,2432,2560,2688,2816,2944,3072];
tile_config_y[12] = [416,416,416,416,416,416,416,416,416,544,544,1120,1120,1120,672,672,672,672,672,672,672,672,672];
enemy_config_x[12] = [2048,2560];
enemy_config_y[12] = [416-64,416-64];
cat_config_x[12] = [2560];
cat_config_y[12] = [1120-64];