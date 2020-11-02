/// @description Insert description here
// Runs every step of the game so in 60fps, runs 60 times per second

//Get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

//calculate movement
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

//apply movement
x += hsp;
y += vsp;

//apply the animation
image_xscale = facing;

