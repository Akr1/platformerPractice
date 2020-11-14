///player_idle_state();
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle_state(){
	//Get input 
	//calls the script
	get_input();

	//calculate movement
	calculate_movement();
	
	//check state
	if (hsp != 0) state = states.WALK;
	//if attack is something different to 0
	if (attack) {
		state = states.ATTACK;
		// the current sub-image or frame shown for the instance of the sprite
		// set it to 0 to start from the beginning of animation cycle
		// in order to play the attack animation starting from the first frame
		image_index = 0;
	}
	
	//apply movement
	collision();

	//apply the animation
	//hsp not equal 0 means that player is moving
	animate();
}