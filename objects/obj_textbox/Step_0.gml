/// @description Animations and effects

// Fade effect
switch(fadeState) {
    // Fade in
    case fadeMe.fadeIn: {
        if (image_alpha < 1) {
            image_alpha += fadeSpeed;
        } else {
            fadeState = fadeMe.waitForInput;
        }
        break;
    }
    // Wait for input
    case fadeMe.waitForInput: {
        if (keyboard_check_pressed(vk_space)) {
            fadeState = fadeMe.fadeOut; 
        }
        break;
    }
    // Fade out
    case fadeMe.fadeOut: {
        if (image_alpha > 0) {
            image_alpha -= fadeSpeed;
        } 
        if (image_alpha <= 0) {
            // Queue up next prompt or destroy
            if (promptIndex < array_length(prompt)) {
                 textToShow = string_concat((prompt[promptIndex].name),": ",(prompt[promptIndex].prompt));
				 promptIndex++;
                fadeState = fadeMe.fadeIn;
                image_alpha = 0;
            } else {
                instance_destroy();
            }
        }
        break;
    }
}

if (promptIndex >= array_length(prompt)&& keyboard_check_pressed(vk_space)){
obj_teacher.move = true;
}