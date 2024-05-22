/// @description  teacher
// If the character is fainted, skip the rest

if (hp <= 0) {
    playerState = "faint";
	sprite_index = spr_prof_die
	image_index = 0;
	obj_player.hasWon = true;
}

// if moving
if(vx !=0 || vy!= 0){
	sprite_index = spr_prof_run;
	if !collision_point(x+vx,y,obj_par_env,true,true){
	  x += vx;
	}
	if !collision_point(x,y+vy,obj_par_env,true,true){
	  y += vy;
	}
}
	

//ange sprite direction based on movement 
if (vx > 0) {
		//rite_index = spr_prof_right;
		dir = 0;
	}
	if (vx < 0) {
		//rite_index = spr_prof_left;
		dir = 2;
	}
	if (vy > 0) {
	//prite_index = spr_prof_down;
		dir = 3;
	}
	if (vy < 0) {
		//rite_index = spr_prof_up;
		dir = 1;
	}

// Calculate the distance to the player
var dist_to_player = distance_to_object(obj_player);

// AI logic for attacking or moving towards the player
if (playerState != "faint") {
     if (dist_to_player < attack_range && playerState != "attack"){
        // Attack the player
        playerState = "attack";
        sprite_index = spr_prof_attack;
		image_index = 0;
		last_attack_time = current_time;
		audio_play_sound(snd_whip,1,false);

        // Deal damage to the player
		
        with (obj_player) {
            hp -= attack_damage;
            barreDeVie.hp = hp;
        }
    } else if (playerState == "attack") {
		move_towards_point(obj_player.x, obj_player.y, walkSpeed);
		if(image_index >= image_number - 1){
			playerState = "idle";
			sprite_index = spr_idle_down;
		}
    } else if (dist_to_player < follow_range) {
        // Move towards the player
        playerState = "move";
        sprite_index = spr_prof_run;
        move_towards_point(obj_player.x, obj_player.y, walkSpeed);
    } else {
        // Idle if the player is out of follow range
        playerState = "idle";
        sprite_index = spr_idle_down;
    }
	
}else {
  
   if(image_index >= image_number - 1) image_speed = 0; // Stop the animation
	
    //exit;
}


// Update health bar position
barreDeVie.x = x;
barreDeVie.y = y - 32;


// sorting depth 
depth =- y;