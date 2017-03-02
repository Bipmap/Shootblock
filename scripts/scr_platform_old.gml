scr_getinputs();

//Respond to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if(place_meeting(x, y + 1, obj_platform))
{
    vsp = key_jump * -jumpspeed;
}

if (vsp < 0) && (!key_jump_held) vsp += grav;

t_hsp = hsp + recoil_x;
t_vsp = vsp + recoil_y;

//Horizontal collision
if (place_meeting(x + t_hsp, y, obj_wall))
{
    while(!place_meeting(x + sign(t_hsp), y, obj_wall))
    {
        x += sign(t_hsp);
    }
    t_hsp = 0;
}
x += t_hsp;

//Vertical collision
if (place_meeting(x, y + t_vsp, obj_platform))
{
    while(!place_meeting(x, y + sign(t_vsp), obj_platform))
    {
        y += sign(t_vsp);
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
