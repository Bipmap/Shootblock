scr_getinputs();

//Respond to inputs
move = key_left + key_right;
hsp += move * movespeed;
hsp = clamp(hsp, -6, 6);
if (hsp > 0 && move < 0) hsp = 0;
if (hsp < 0 && move > 0) hsp = 0;
if (move == 0) hsp *= 0.8;
if (vsp < 10) vsp += grav * global.smod;

if(place_meeting(x, y + 1, obj_platform))
{
    vsp = key_jump * -jumpspeed;
}
else hsp *= 0.89;
/*
if(place_meeting(x, y + vsp + 1, obj_platform_trigger)) image_angle = 0;
else if (hsp < -0.2) image_angle += 10;
else if (hsp > 0.2) image_angle -= 10;
else image_angle = 0;
*/
if (vsp < 0) && (!key_jump_held) vsp += grav * global.smod;

t_hsp = (hsp + recoil_x) * global.smod;
t_vsp = (vsp + recoil_y) * global.smod;

//Add spin
/*if(place_meeting(x, bbox_bottom + t_vsp, obj_platform)) 
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
if (place_meeting(x, y + t_vsp, obj_platform))
{
    var n = 0;
    while(!place_meeting(x, y + sign(t_vsp), obj_platform))
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
if ((!place_meeting(x, bbox_bottom + t_vsp, obj_platform) && !place_meeting(x, bbox_bottom + 1, obj_platform)) || key_drop)
{
    state = p_states.normal;
}
