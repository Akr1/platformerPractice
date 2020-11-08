///player_walk_state();
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk_state(){
	//Get input 
	//calls the script
	get_input();

	//calculate movement
	calculate_movement();
	
	//check state
	if (hsp == 0) state = states.IDLE;
	
	//apply movement
	collision();

	//apply the animation
	//hsp not equal 0 means that player is moving
	animate();
}