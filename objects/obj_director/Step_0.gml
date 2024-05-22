/// @description Move towards door
// Vous pouvez écrire votre code dans cet éditeur

if(move){
	var door01 = instance_nearest(x,y,obj_door01);
move_towards_point(door01.x, door01.y, 3);
 if (point_distance(x, y, door01.x, door01.y) < 5) {
	 room_goto(rm_level2); 
 }
}
