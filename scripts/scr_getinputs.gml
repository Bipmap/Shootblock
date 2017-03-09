//Get player's input
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump = max(keyboard_check_pressed(ord('W')), keyboard_check_pressed(vk_space));
key_jump_held = max(keyboard_check(ord('W')), keyboard_check(vk_space));
key_drop = keyboard_check(ord('S'));
key_reload = keyboard_check_pressed(ord('R'));
mouse_left = mouse_check_button_pressed(mb_left);
mouse_left_p = mouse_check_button(mb_left);
mouse_left_r = mouse_check_button_released(mb_left);
mouse_right_p = mouse_check_button(mb_right);
key_unlock = keyboard_check_pressed(vk_escape);
key_m = keyboard_check_pressed(ord('M'));
key_tab = keyboard_check_pressed(vk_tab);
key_enter = keyboard_check_pressed(vk_enter);
key_space = keyboard_check_pressed(vk_space);

key_shift = keyboard_check_pressed(vk_shift);
key_up = -keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));

key_menu_up = max(keyboard_check_pressed(ord('W')), keyboard_check_pressed(vk_up));
key_menu_down = max(keyboard_check_pressed(ord('S')), keyboard_check_pressed(vk_down));
key_menu_right = max(keyboard_check_pressed(ord('D')), keyboard_check_pressed(vk_right));
key_menu_left = max(keyboard_check_pressed(ord('A')), keyboard_check_pressed(vk_left));
key_menu_confirm = max(keyboard_check_pressed(vk_space), keyboard_check_pressed(vk_enter));
key_menu_deny = keyboard_check_pressed(vk_escape);
