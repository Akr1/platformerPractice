/// @description Insert description here
// Runs every step of the game so in 60fps, runs 60 times per second

//Get input 
//calls the script
get_input();

//calculate movement
calculate_movement();

//apply movement
collision();

//apply the animation
//hsp not equal 0 means that player is moving
animate();


