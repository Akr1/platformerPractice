/// @description Insert description here
// Runs every step of the game so in 60fps, runs 60 times per second

//execute state
switch(state) {
	case states.IDLE:
		script_execute(player_idle_state);
	break;
	case states.WALK:
		script_execute(player_walk_state);
	break;
}


