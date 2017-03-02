if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_rivetgun, 0, 0);
    obj_player.recoil_x = lengthdir_x(-2,direction);
    obj_player.recoil_y = lengthdir_y(-2,direction);
    ammocount -= 1;
    obj_camera.shake = 15;
    canshoot = false;
    alarm[0] = 8;
    //effect_create_above(ef_smokeup, x + lengthdir_x(10, direction), y + lengthdir_y(20, direction), 0.6, c_white);
    
    distance = 0;
    while (distance < 2000)
    {
        hit = collision_line(x, y, x + lengthdir_x(distance, direction), y + lengthdir_y(distance, direction), obj_target, false, true)
        || collision_line(x, y, x + lengthdir_x(distance, direction), y + lengthdir_y(distance, direction), obj_enemy, false, true)
        || collision_line(x, y, x + lengthdir_x(distance, direction), y + lengthdir_y(distance, direction), obj_enemy_inactive, false, true)
        || collision_line(x, y, x + lengthdir_x(distance, direction), y + lengthdir_y(distance, direction), obj_wall, false, true);
        if (hit)
        {
            bullet = instance_create(x + lengthdir_x(distance, direction), y + lengthdir_y(distance, direction), obj_bullet_rivetgun);
            bullet.direction = direction;
            bullet.image_angle = direction;
            break;
        }
        else distance += 10;
    }
    instance_create(x, y, obj_rivetgun_trail);
}
