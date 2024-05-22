/// @description 

// Variables

walkSpeed= 10;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
target = obj_teacher;
hp = 100;
hp_max= hp;
hasWon = false;
hasLost = false;

playerState = "idle"

// refrence barre de vie 
barreDeVie = instance_create_layer(x, y - 32, "GUI", obj_barreVie);
barreDeVie.hp = hp;


// attack range et attack damage
attack_range = 50;
attack_damage = 10; 
follow_range = 45;
projectile = 1;

// Attack timing variables
last_attack_time = 0;
attack_cooldown = 30;

// add sounds 
//playerAttackSound = sound_add(snd_grenade);
