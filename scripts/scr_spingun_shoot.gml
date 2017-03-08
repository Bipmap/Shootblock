if ((ammocount > 0) && (canshoot == true))
{
    audio_play_sound(snd_spingun, 0, 0);
    bullet = instance_create(x, y, obj_bullet_smg);
    bullet.direction = direction + random_range(-accuracy, accuracy);
    bullet.speed = 13;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(10, direction);
        var ybuff = lengthdir_y(10, direction);
        x += xbuff;
        y += ybuff;
    }
    
    shell = instance_create(x, y, obj_shell_smg);
    if ((direction > 90) && (direction < 270))
    {
        shell.hsp = lengthdir_x(random_range(5, 10), direction - 150);
        shell.vsp = lengthdir_y(random_range(5, 10), direction - 150);
    }
    else
    {
        shell.hsp = lengthdir_x(random_range(5, 10), direction + 150);
        shell.vsp = lengthdir_y(random_range(5, 10), direction + 150);
    }
    
    obj_player.recoil_x = lengthdir_x(-3,direction);
    obj_player.recoil_y = lengthdir_y(-3,direction);
    ammocount -= 1;
    obj_camera.shake += 5;
    canshoot = false;
    alarm[0] = delay;
    delay = delay*0.9;
    effect_create_above(ef_smokeup, x + lengthdir_x(80, direction), y + lengthdir_y(75, direction), 0.5, c_white);
}
