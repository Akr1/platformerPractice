///calculate_movement
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_movement(){
	hsp += (right-left) * walk_spd;

	//apply the movement
	//drag/friction
	hsp = lerp(hsp, 0, drag);

	//stop
	if(abs(hsp) <= 0.1) hsp = 0;

	//direction adjustment
	if(hsp != 0) facing = sign(hsp);

	//speed limiter
	hsp = min(abs(hsp),max_hsp) * facing;
}