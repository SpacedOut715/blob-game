/// @description Ball movement
// You can write your code in this editor

var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _jump = keyboard_check(vk_space) or keyboard_check(ord("W"));

var _x_input = _right - _left;
var _y_input = 0;

//move_and_collide(x_input * obj_speed, y_input * obj_speed, obj_wall_temp);
//phy_position_x += x_input * obj_speed;
//if collision_circle(x, y, 32, obj_wall_temp, false, false)
if obj_player_ball_manager.active_ball_id == id {
	physics_apply_impulse(phy_position_x, phy_position_y, _x_input * obj_speed, _y_input * obj_speed);

	if physics_test_overlap(phy_position_x, phy_position_y, 360, obj_physx_static) {
		obj_grounded = true;
	}

	if (_jump && obj_grounded) {
		physics_apply_impulse(phy_position_x, phy_position_y, 0, -obj_jump_force);
		obj_grounded = false;
	}
}





