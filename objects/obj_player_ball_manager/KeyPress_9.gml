/// @description Next player ball
// You can write your code in this editor

var _size = ds_list_size(player_balls_list)

active_ball_index = (active_ball_index + 1) % _size;
active_ball_id = ds_list_find_value(player_balls_list, active_ball_index);