if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_mine, 0, 0);
    bullet = instance_create(x, y, obj_mine);
    //bullet.direction = direction;
    bullet.hsp = lengthdir_x(10 + abs(obj_player.hsp), direction);
    bullet.vsp = lengthdir_y(8, direction);
    //bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(-10, direction);
        var ybuff = lengthdir_y(-5, direction);
        x += xbuff;
        y += ybuff;
    }
    obj_player.recoil_x = lengthdir_x(-2,direction);
    obj_player.recoil_y = lengthdir_y(-1,direction);
    ammocount -= 1;
    obj_camera.shake = 2;
    canshoot = false;
    alarm[0] = 10;
    //effect_create_above(ef_smokeup, x + lengthdir_x(20, direction), y + lengthdir_y(40, direction), 0.9, c_white);
}
