/// @description SetUp

// Variables
objDirector = instance_find(obj_director, 0); // Trouver l'instance de obj_director
if (objDirector != noone) {
    prompt = objDirector.promptList;
    promptIndex = 0;
    textToShow = prompt[promptIndex];
    promptIndex += 1;
} else {
    prompt = [];
    promptIndex = 0;
    textToShow = "";
}

textWidth = 450;
lineHeight = 28; 

enum fadeMe {
    fadeIn,
    fadeOut,
    waitForInput
};

fadeState = fadeMe.fadeIn;
fadeSpeed = 0.1; 
image_alpha = 0; 
depth = -10000;
global.playerControl = false;
