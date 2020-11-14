// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack_state(){
	//Get input 
	//calls the script
	get_input();

	//calculate movement
	calculate_movement();
	
	//check state
	//Check to verify we are at the end of the animation
	//Image_index the current frame we are at at the moment. Starts at 0
	//Image number is the number of sub-images in a sprite. Starts at 1
	
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed) {
		if (hsp != 0) state = states.WALK 
		else state = states.IDLE;
	}
	//apply movement
	collision();

	//apply the animation
	//hsp not equal 0 means that player is moving
	animate();
}