/// @description Insert description here
// You can write your code in this editor

if cloning_enabled {
	var _ball_id = collision_rectangle(
		x - 20, y, 
		x + 20, y - 2, 
		obj_player_ball, false, false);
	if _ball_id {
		
		timer += 1;
		
		if timer == duplicate_timer {
			cloning_enabled = false;
			instance_create_layer(x-32, y, "Instances", obj_player_ball);
			instance_create_layer(x+32, y, "Instances", obj_player_ball);
			instance_destroy(_ball_id);
			
			//refresh active ball
			obj_player_ball_manager.alarm[0] = 1;
		}	
	} else {
		timer = 0;
	}
}

