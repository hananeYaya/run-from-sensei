/// @description  Player movement

// If the character is fainted, skip the rest
if (hp <= 0) {
	playerState = "faint";
	hasLost = true;
}

if (playerState ="faint") {

    sprite_index = spr_playerDie;
	image_speed = 0;
}

// check keys for movement 
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// for room level2
if (instance_exists(obj_teacher)) {
	move_towards_point(obj_teacher.x, obj_teacher.y, 0.1);
}

// calculate movement 

vx = (moveRight - moveLeft) * walkSpeed;

vy = (moveDown - moveUp) * walkSpeed;

// if idle : 

if(vx== 0 && vy == 0 && playerState !="attack"){
	sprite_index = spr_player_idle
// do nothing for now
	
}


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
		
// Attack logic  for level 2
if (keyboard_check_pressed(vk_space)) {
    if (playerState != "attack") {
        playerState = "attack";
        sprite_index = spr_playerAttack;
		projectile = 1;
    //    last_attack_time = current_time;
		audio_play_sound(snd_grenade,1,false);
    }
}

if(playerState == "attack") {
	if(image_index >= 9 && projectile > 0){
		projectile--;
		var projectileDir = 3;
		if(dir == 2) projectileDir = -3;
		instance_create_depth(x, y, -y, objPlayerProjectile, {xSpeed: projectileDir, attack_damage: attack_damage});
		
		 // Deal damage to the teacher if in range
        if (distance_to_object(obj_teacher) < attack_range) {
            with (obj_teacher) {
                hp -= other.attack_damage;
                barreDeVie.hp = hp;

                if (hp <= 0) {
                    playerState = "faint";
                }
            }
        }
	}
	
	
	
	

	
				
	if(image_index >= image_number - 1){
		playerState = "idle";
		sprite_index = spr_player_idle;
	}
}
// ifplayer has won , move toward door 

if (hasWon) {
	playerState = "move_to_door";
	var door = instance_nearest(x,y,obj_door);
	move_towards_point(door.x, door.y, 3);
	 if (point_distance(x, y, door.x, door.y) < 5) {
        // Player reached the door
        playerState = "exit";
        // for now just won game mabe add transition into a room that is outside 
		room_goto(rm_win)
		//transition_to_win();
    }
} 


if (hasLost) {
	room_goto(rm_lose);
}



	
	


// Update la position de barre de vie
barreDeVie.x = x;

barreDeVie.y = y-32;




// sorting depth 
depth =- y;




