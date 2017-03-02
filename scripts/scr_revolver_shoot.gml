if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_revolver, 0, 0);
    bullet = instance_create(x, y, obj_bullet_revolver);
    bullet.direction = direction;
    bullet.speed = 16;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(-12, direction);
        var ybuff = lengthdir_y(-10, direction);
        x += xbuff;
        y += ybuff;
    }
    obj_player.recoil_x = lengthdir_x(-2,direction);
    obj_player.recoil_y = lengthdir_y(-2,direction);
    ammocount -= 1;
    obj_camera.shake = 35;
    canshoot = false;
    alarm[0] = 8;
    effect_create_above(ef_smokeup, x + lengthdir_x(10, direction), y + lengthdir_y(20, direction), 0.6, c_white);
}
