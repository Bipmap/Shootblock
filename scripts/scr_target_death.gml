///Play sound, kill self and gun
instance_destroy();
instance_create(x, y, obj_target_death);
audio_play_sound(snd_hit, 0, 0);

/*var randomangle = random(360);
var o;
o = instance_create(x, y, obj_enemy_side);
o.angle = 0 + randomangle;
o = instance_create(x, y, obj_enemy_side);
o.angle = 120 + randomangle;
o = instance_create(x, y, obj_enemy_side);
o.angle = 240 + randomangle;

with (obj_enemy_side)
{
    direction = angle;
    image_angle = angle;
    speed = 3;
}
