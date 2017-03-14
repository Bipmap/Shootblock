state = e_states.aim;
if (global.easy == 0)
{
    circle = instance_create(gun.x, gun.y, obj_aim);
    aimtimer = 30;
}

else if (global.easy == 1)
{
    circle = instance_create(gun.x, gun.y, obj_aim);
    aimtimer = 50 * global.aim_mod;
}
