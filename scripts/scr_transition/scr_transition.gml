// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function transition_to_win() {
    transition_kind = 10; // Fade transition
    transition_steps = 60; // Number of steps (frames) for the transition
    room_goto(rm_win); // Go to the win room
}