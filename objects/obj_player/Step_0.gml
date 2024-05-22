// check keys for movement 
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

//move_towards_point(obj_teacher.x, obj_teacher.y, 1);

// calculate movement 

vx = ( moveRight - moveLeft) * walkSpeed;

vy = (moveDown - moveUp) * walkSpeed;

// if idle : 
/*
if(vx== 0 && vy == 0 && playerState !="attack"){
    sprite_index = spr_player_idle
// do nothing for now

}*/




// if moving

if(vx !=0 || vy!= 0){

    sprite_index= spr_playerRun;
    if !collision_point(x+vx,y,obj_par_env,true,true){
      x += vx;
    }
    if !collision_point(x,y+vy,obj_par_env,true,true){
      y += vy;
    }
}


//change sprite direction
		if (vx > 0) {
            sprite_index = spr_player_run_right;
            dir = 0;
        }
        if (vx < 0) {
            sprite_index = spr_player_run_left;
            dir = 2;
        }
        if (vy > 0) {
            sprite_index = spr_playerRun;
            dir = 3;
        }
        if (vy < 0) {
            sprite_index = spr_player_run_up;
            dir = 1;
        }
		
		