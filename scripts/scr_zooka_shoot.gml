if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_zooka, 0, 0);
    bullet = instance_create(x, y, obj_rocket);
    bullet.direction = direction;
    bullet.speed = 20;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(-10, direction);
        var ybuff = lengthdir_y(-5, direction);
        x += xbuff;
        y += ybuff;
    }
    obj_player.recoil_x = lengthdir_x(-20,direction);
    obj_player.recoil_y = lengthdir_y(-13,direction);
    ammocount -= 1;
    obj_camera.shake = 46;
    effect_create_above(ef_smokeup, x + lengthdir_x(10, direction), y + lengthdir_y(20, direction), 1, c_white);
}

