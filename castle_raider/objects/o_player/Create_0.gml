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
//attack
attack = 0;

//states
//constains keywords that describe a specific/possible state the player currently is in
enum states {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK
};

//instance variable to store the actual state we are in
//the player starts in the IDLE state when created
state = states.IDLE;

//Using an array to easily change states
//Creating a states array using enum states as keys to acces scripts that denote behaviour
//for a specific state
states_array[states.IDLE] = player_idle_state;
states_array[states.WALK] = player_walk_state;
states_array[states.JUMP] = player_jump_state;
states_array[states.ATTACK] = player_attack_state;
states_array[states.BLOCK] = player_block_state;
states_array[states.CROUCH] = player_crouch_state;
states_array[states.CROUCH_BLOCK] = player_crouch_block_state;

//create sprites array
//Uses the same reasoning as the states array to easily change the displayed sprite based on the 
//current state we are in
sprites_array[states.IDLE] = s_player_idle;
sprites_array[states.WALK] = s_player_walk;
sprites_array[states.JUMP] = s_player_jump;
sprites_array[states.ATTACK] = s_player_attack;
sprites_array[states.BLOCK] = s_player_block;
sprites_array[states.CROUCH] = s_player_crouch;
sprites_array[states.CROUCH_BLOCK] = s_player_crouch_block;
