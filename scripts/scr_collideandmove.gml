scr_getinputs();

//Respond to inputs
move = key_left + key_right;
move_v = key_up + key_down;
hsp += move * movespeed;
hsp = clamp(hsp, -6, 6);
if (move == 0) hsp *= 0.8;
if (hsp > 0 && move < 0) hsp = 0;
if (hsp < 0 && move > 0) hsp = 0;
if (vsp < 10) vsp += grav * global.smod;

/*
if (move) shifdir_x = 0;
else if (!move) shifdir_x = 180;
else shifdir_x = 0;
if (move_v) shifdir_y = 90;
else if (!move_v) shifdir_y = 270;
else shifdir_y = 0;

shifdir_t = shifdir_x - shifdir_y;

if (!shifting && key_shift) shifting = 1;

if (!shifting)
{
    shift++;
    shift = min(30, shift);
}
else if (shifting)
{
    shift--;
    hsp += lengthdir_x(shift*0.2, shifdir_t);
    vsp += lengthdir_y(shift*0.2, shifdir_t);
    if (shift == 0) shifting = 0;
}
*/

if (place_meeting(x, y + 1, obj_wall))
{
    vsp = 0;
    jumpable = 1;
    shiftable = 1;
    //shifting = 0;
}

if (!place_meeting(x, y + 1, obj_wall))
{
    if (shiftable && key_shift)
    {
        shiftable = 0;
        shifting = 1;
    }
}

if (shiftable && !shifting)
{
    shift++;
    shift = min(30, shift);
}

if (shifting)
{
    shift--;
    if (shift == 0) shifting = 0;
    hsp += (shift*0.2) * move;
    vsp += (shift*0.02) * move_v;
}

if(jumpable && key_jump)
{
    jumpable = 0;
    vsp = -jumpspeed;
}
else hsp *= 0.89;
/*
if(place_meeting(x, bbox_bottom + vsp, obj_wall) || place_meeting(x, bbox_top + vsp, obj_wall) || 
place_meeting(bbox_right + hsp, y, obj_wall) || place_meeting(bbox_left + hsp, y, obj_wall)) 
image_angle = 0;
else if (hsp < -0.2) image_angle += 10;
else if (hsp > 0.2) image_angle -= 10;
else image_angle = 0;
*/
if (vsp < 0) && (!key_jump_held) vsp += grav * global.smod;

t_hsp = (hsp + recoil_x) * global.smod;
t_vsp = (vsp + recoil_y) * global.smod;

//Add spin
/*if(place_meeting(x, bbox_bottom + t_vsp, obj_wall) || place_meeting(x, bbox_top + t_vsp, obj_wall) || 
place_meeting(bbox_right + t_hsp, y, obj_wall) || place_meeting(bbox_left + t_hsp, y, obj_wall))
image_angle = 0;
else if (t_hsp < -0.2) image_angle += 10 * global.smod;
else if (t_hsp > 0.2) image_angle -= 10 * global.smod;
else image_angle = 0;*/

//Horizontal collision
if (place_meeting(x + t_hsp, y, obj_wall))
{
    var n = 0;
    while(!place_meeting(x + sign(t_hsp), y, obj_wall))
    {
        x += sign(t_hsp);
        n++;
        if (n == 50) break;
    }
    t_hsp = 0;
}
x += t_hsp;

//Vertical collision
if (place_meeting(x, y + t_vsp, obj_wall))
{
    var n = 0;
    while(!place_meeting(x, y + sign(t_vsp), obj_wall))
    {
        y += sign(t_vsp);
        n++;
        if (n == 50) break;
    }
    t_vsp = 0;
}
y += t_vsp;

//Degrade speeds
recoil_x *= 0.92;
recoil_y *= 0.92;
if (abs(recoil_x) < 0.5) recoil_x = 0;
if (abs(recoil_y) < 0.5) recoil_y = 0;

//Change state
if (place_meeting(x, y + 33, obj_platform) && (t_vsp > 0))
{
    state = p_states.platform;
}
