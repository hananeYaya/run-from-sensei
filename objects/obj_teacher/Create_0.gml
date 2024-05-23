/// @description 

// Variables
move = false;
if(room == rm_level2){
walkSpeed= 2;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
hp =100;
hp_max = hp;
playerState ="idle"


// refrence barre de vie 
barreDeVie = instance_create_layer(x, y - 32, "GUI", obj_barreVie);
barreDeVie.hp = hp;
barreDeVie.hp_max = hp_max;

// attack range et attack damage
attack_range = 32;
attack_damage = irandom_range(5, 15);
follow_range = 45;

// Attack timing variables
last_attack_time = 0;
attack_cooldown = 30; // Adjust this value as needed
};
