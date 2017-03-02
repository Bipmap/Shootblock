if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_pistol, 0, 0);
    bullet = instance_create(x, y, obj_bullet);
    bullet.direction = direction;
    bullet.speed = 20;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(-20, direction);
        var ybuff = lengthdir_y(-5, direction);
        x += xbuff;
        y += ybuff;
    }
    obj_player.recoil_x = lengthdir_x(-2,direction);
    obj_player.recoil_y = lengthdir_y(-2,direction);
    ammocount -= 1;
    obj_camera.shake = 8;
    canshoot = false;
    alarm[0] = 10;
    effect_create_above(ef_smokeup, x + lengthdir_x(10, direction), y, 0.3, c_white);
}
