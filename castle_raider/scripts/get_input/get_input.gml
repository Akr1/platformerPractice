///get_input();
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	//Instance variables for the player
	// local var, instance no var, global global.variableName
	// keyboard check checks for the key being pressed down
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	//captures the attack key
	//We check for a single press with keyboard_check_pressed
	attack = keyboard_check_pressed(vk_shift);
}