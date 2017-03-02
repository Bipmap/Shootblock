bullet = instance_create(gun.x, gun.y, obj_bullet_enemy);
bullet.direction = gun.direction;
bullet.speed = 15;
bullet.image_angle = gun.direction;
with (bullet)
{
    var xbuff = lengthdir_x(-10, direction);
    var ybuff = lengthdir_y(-5, direction);
    x += xbuff;
    y += ybuff;
}
state = e_states.roam;
