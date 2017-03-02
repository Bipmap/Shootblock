hsp = dir * movespeed;
if (vsp < 10) vsp += grav * global.smod;

if(place_meeting(x, y + 1, obj_wall))
{
    vsp = jump * -jumpspeed;
}

//Horizontal Collision
if (place_meeting(round(x+hsp),round(y),obj_wall))
{
    while(!place_meeting(round(x+sign(hsp)),round(y),obj_wall)) x += sign(hsp);
    hsp = 0;
}
x += hsp * global.smod;

//Vertical Collision
if (place_meeting(round(x),round(y+vsp),obj_wall))
{
    while(!place_meeting(round(x),round(y+sign(vsp)),obj_wall)) y += sign(vsp);
    vsp = 0;
}
y += vsp * global.smod;
