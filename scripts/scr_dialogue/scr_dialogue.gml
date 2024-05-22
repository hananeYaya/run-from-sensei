// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function scr_dialogue() {
	
	var promptList = [
	{name: "Prof ",prompt : "script 1", sprite: spr_teacher_walk_down},
	{name: "eleve", prompt : "script 2", sprite: spr_playerRun},
	{name: "eleve", prompt : "script 3", sprite: spr_playerRun},
	{name: "prof", prompt : "script 4", sprite: spr_teacher_walk_down},
	]
    return promptList;
}
