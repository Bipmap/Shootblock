if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_shotgun, 0, 0);
    var i;
    for (i = 0; i < 4; i += 1;)
    {
        bullet = instance_create(x, y, obj_bullet_shotgun);
        bullet.direction = direction - 16 + (i * 8);
        bullet.speed = 20;
        bullet.image_angle = direction;
        with (bullet)
        {
            var xbuff = lengthdir_x(-10, direction);
            var ybuff = lengthdir_y(-5, direction);
            x += xbuff;
            y += ybuff;
        }
    }
    obj_player.recoil_x = lengthdir_x(-10,direction);
    obj_player.recoil_y = lengthdir_y(-5,direction);
    ammocount -= 1;
    obj_camera.shake = 19;
    canshoot = false;
    alarm[0] = 25;
    alarm[1] = 20;
    effect_create_above(ef_smokeup, x + lengthdir_x(20, direction), y + lengthdir_y(40, direction), 0.9, c_white);
}
