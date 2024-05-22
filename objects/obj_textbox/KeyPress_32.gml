/// @description SetUp 


if (image_alpha <= 0 && fadeState == fadeMe.fadeOut) {
    if (promptIndex < array_length(prompt)) {
        textToShow = prompt[promptIndex];
        promptIndex += 1;
        fadeState = fadeMe.fadeIn;
        image_alpha = 0;
    } else {
        instance_destroy();
    }
}

if(fadeState == fadeMe.waitForInput && keyboard_check_pressed(vk_space)) {
       fadeState = fadeMe.fadeOut; 
}