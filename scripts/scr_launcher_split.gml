instance_destroy();
var i;
for (i = 0; i < 8; i += 1;)
{
    bullet = instance_create(x, y, obj_shrapnel);
    bullet.direction = direction + (i * 45);
    bullet.speed = 20;
    bullet.image_angle = direction;
    with (bullet)
    {
        var xbuff = lengthdir_x(20, direction);
        var ybuff = lengthdir_y(20, direction);
        x += xbuff;
        y += ybuff;
    }
}
audio_play_sound(snd_explosion3, 0, 0);
