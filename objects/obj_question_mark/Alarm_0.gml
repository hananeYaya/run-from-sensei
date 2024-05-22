sprite_visible = true;

if (sprite_visible && alpha_value < 1) {
    alpha_value += fade_speed;
    if (alpha_value > 1) alpha_value = 1; // Clamp to 1
}