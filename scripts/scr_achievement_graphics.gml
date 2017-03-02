draw_sprite(spr_player, 0, desc1_x + 16, sprite_y + 16);
draw_sprite(spr_gun, 0, desc1_x + 56, sprite_y + 16);
if (mpos != 9 && mpos != 8) draw_sprite_ext(spr_hat, mpos - 1, desc1_x + 16, sprite_y - 24, -1, 1, 0, c_white, 1);
if (mpos == 8) draw_sprite_ext(spr_hat, mpos - 1, desc1_x + 14, sprite_y - 12, -1, 1, 0, c_white, 1);
if (mpos == 9) draw_sprite_ext(spr_hat, mpos - 1, desc1_x + 6, sprite_y + 2, -1, 1, 0, c_white, 1);
draw_rectangle_color(desc1_x, 358, desc1_x + 465, 544, c_ltgray, c_ltgray, c_gray, c_gray, false);
draw_set_color(c_black);
draw_rectangle(desc1_x, 358, desc1_x + 465, 544, true);
