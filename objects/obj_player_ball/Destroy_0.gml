/// @description Remove from player balls list
// You can write your code in this editor

var _index = ds_list_find_index(obj_player_ball_manager.player_balls_list, id);

ds_list_delete(obj_player_ball_manager.player_balls_list, _index);


