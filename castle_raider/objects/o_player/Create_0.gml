/// @description Insert description here
// Runs once at the start when an instance of the object is created
//speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;

//friction to slow down the player
drag = .12;

//The direction the player is facing. 1 indicates right/ -1 indicates left 
facing = 1;

//Movement
left = 0;
right = 0;
up = 0;
right = 0;

//states
//constains keywords that describe a specific/possible state the player currently is in
enum states {
	IDLE,
	WALK
};

//instance variable to store the actual state we are in
//the player starts in the IDLE state when created
state = states.IDLE;