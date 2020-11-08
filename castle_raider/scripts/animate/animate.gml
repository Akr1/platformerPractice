/// animate()
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animate(){
	image_xscale = facing;
	if(hsp != 0){
		//name of current sprite for the instance
		sprite_index = s_player_walk;
	} else {
		//else if hsp is 0, set player animation/sprite to 0
		sprite_index = s_player_idle;
	}
}