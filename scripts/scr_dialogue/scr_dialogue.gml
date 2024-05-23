// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function scr_dialogue() {
	
var promptList = [
    {name: "Directeur", prompt: "Silence, bande d'incapables ! Aujourd'hui, vous allez apprendre quelque chose d'utile pour une fois. Vous allez apprendre a hacker. Oui, hacker ! Parce que dans mon ecole, seuls les plus ruses survivent.", sprite: spr_teacher_walk_down},
    {name: "Eleve", prompt: "Pourquoi nous apprendre a hacker ? On veut juste sortir d'ici !", sprite: spr_playerRun},
    {name: "Directeur", prompt: "Sortir ? Personne ne sort d'ici sans prouver qu'il en est digne ! Vous devez montrer que vous pouvez dejouer mes systemes. Ceux qui echouent... disons juste qu'ils ne seront plus un probleme. Maintenant, ecoutez bien !", sprite: spr_teacher_walk_down},
    {name: "Directeur", prompt: "*Le directeur lance un lance-pierre sur le bureau* Et ca, c'est pour vous apprendre a vous defendre. Un hacker doit etre pret a tout. Le lance-pierre est votre nouvelle arme. Ne me demandez pas pourquoi, c'est comme ca et pas autrement !", sprite: spr_teacher_walk_down},
    {name: "Directeur", prompt: "*Le telephone du directeur sonne avec un jingle idiot* Ah, zut, mon alarme pour nourrir mon poisson rouge ! Si je ne le fais pas a la seconde pres, il pourrait penser que je l'ai oublie. Ne bougez pas, je reviens tout de suite.", sprite: spr_teacher_walk_down}
];




    return promptList;
}

