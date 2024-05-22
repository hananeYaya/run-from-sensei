/// @description SetUp

// Variables

prompt = scr_dialogue()
promptIndex = 0;
textWidth = 300;
lineHeight = 28;
global.playerControl = false;

if (prompt != noone || prompt != undefined ) {
    textToShow = string_concat((prompt[promptIndex].name),": ",(prompt[promptIndex].prompt));
	promptIndex ++;
   
} else {
    textToShow = "";
	prompt = [];
}

 

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
