if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_launcher, 0, 0);
    bullet = instance_create(x, y, obj_bullet_launcher);
    //bullet.direction = direction;
    bullet.hsp = lengthdir_x(20 + abs(obj_player.hsp), direction);
    bullet.vsp = lengthdir_y(16, direction);
    //bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(20, direction);
        var ybuff = lengthdir_y(20, direction);
        x += xbuff;
        y += ybuff;
    }
    obj_player.recoil_x = lengthdir_x(-15,direction);
    obj_player.recoil_y = lengthdir_y(-12,direction);
    ammocount -= 1;
    obj_camera.shake = 20;
    canshoot = false;
    alarm[0] = 40;
    effect_create_above(ef_smokeup, x + lengthdir_x(38, direction), y + lengthdir_y(38, direction), 1, c_white);
}
