audio_play_sound(snd_enemyshoot, 0, 0);
bullet = instance_create(gun.x, gun.y, obj_bullet_enemy);
bullet.direction = gun.direction;
bullet.speed = 7 * global.smod;
bullet.image_angle = gun.direction;
with (bullet)
{
    var xbuff = lengthdir_x(-10, direction);
    var ybuff = lengthdir_y(-5, direction);
    x += xbuff;
    y += ybuff;
}

shell = instance_create(x, y, obj_shell_enemy);
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

effect_create_above(ef_smokeup, gun.x + lengthdir_x(10, direction), gun.y, 0.3, c_white);
state = e_states.chase;
