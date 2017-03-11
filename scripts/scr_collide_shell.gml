//Add gravity, collision, and spin
if (vsp < 10) vsp += grav;
hsp *= 0.9;

if (place_meeting(x + hsp, y, obj_wall))
{
    var n = 0;
    while(!place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
        n++;
        if (n == 50) break;
    }
    hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_wall))
{
    var n = 0;
    while(!place_meeting(x, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
        n++;
        if (n == 50) break;
    }
    vsp = 0;
}
y += vsp;

if(place_meeting(x, bbox_bottom + sign(vsp), obj_wall) || place_meeting(x, bbox_top + sign(vsp), obj_wall) || 
place_meeting(bbox_right + sign(hsp), y, obj_wall) || place_meeting(bbox_left + sign(hsp), y, obj_wall))
image_angle = direction;
else if (hsp < -0.2) image_angle += spin;
else if (hsp > 0.2) image_angle -= spin;
else image_angle = direction;
direction = image_angle;
