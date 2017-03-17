///Play sound, kill self and gun
instance_destroy();
instance_create(x, y, obj_enemy_death_inactive);
audio_play_sound(snd_hit, 0, 0);
global.score += 5;
global.combo += 1;
global.hit += 1;
global.total += 1;
//obj_combo.alarm[0] = room_speed * 3;
obj_combo.timer = room_speed * 3;

scr_achievement_combo();

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
