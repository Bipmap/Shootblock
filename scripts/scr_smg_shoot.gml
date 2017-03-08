if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_smg, 0, 0);
    bullet = instance_create(x, y, obj_bullet_smg);
    bullet.direction = direction + random_range(-10, 10);
    bullet.speed = 20;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(-12, direction);
        var ybuff = lengthdir_y(-5, direction);
        x += xbuff;
        y += ybuff;
    }
    
    shell = instance_create(x, y, obj_shell_smg);
    //shell.direction = bullet.direction - 90;
    if ((direction > 90) && (direction < 270))
    {
        shell.hsp = lengthdir_x(random_range(5, 10), direction - 120);
        shell.vsp = lengthdir_y(random_range(5, 10), direction - 120);
    }
    else
    {
        shell.hsp = lengthdir_x(random_range(5, 10), direction + 120);
        shell.vsp = lengthdir_y(random_range(5, 10), direction + 120);
    }
    //shell.image_angle = bullet.direction - 90;
    /*with (shell)
    {
        var xbuff = lengthdir_x(-12, direction);
        var ybuff = lengthdir_y(-5, direction);
        x += xbuff;
        y += ybuff;
    }*/
    
    obj_player.recoil_x = lengthdir_x(-2,direction);
    obj_player.recoil_y = lengthdir_y(-2,direction);
    ammocount -= 1;
    obj_camera.shake = 4;
    canshoot = false;
    alarm[0] = 3;
    effect_create_above(ef_smokeup, x + lengthdir_x(40, direction), y + lengthdir_y(50, direction), 0.4, c_white);
}
