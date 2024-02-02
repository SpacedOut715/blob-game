/// @description Create initial ball
// You can write your code in this editor

player_balls_list = ds_list_create();

active_ball_id = instance_create_layer(x, y, "Instances", obj_player_ball);
active_ball_index = 0;
