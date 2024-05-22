/// @description Draw health bar

// change barre de vie according to hp
if hp<=0 {
	hp=0;
}
var hp_ratio = hp / 100;

//if (hp_ratio > 0.8) {
//    sprite_index = spr_fullLife
//} else if (hp_ratio > 0.6) {
//    sprite_index = spr_70Life;
//} else if (hp_ratio > 0.4) {
//    sprite_index = spr_30Life;
//} else if (hp_ratio > 0.2) {
//    sprite_index = spr_10Life;
//} else {
//    sprite_index = spr_dead;
//}


var scale_factor = 0.5;
var offset_y = -100;

draw_sprite_ext(spr_life_container, 0, x, y+offset_y, scale_factor, scale_factor, 0, c_white, 1);
draw_sprite_ext(spr_lifebar, 0, x - (79 * scale_factor), y - (17 * scale_factor)+offset_y ,hp_ratio*scale_factor,scale_factor,0,c_white,1);
 



/*
draw_self();
*/

//draw_sprite_ext(sprite_index, image_index, x, y + offset_y, scale_factor, scale_factor, image_angle, image_blend, image_alpha);