if ((x < view_xview || x > view_xview + view_wview) ||
(y < view_yview || y > view_yview + view_hview))
{
    if (place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_enemy_inactive))
    {
        ini_open("achievements.ini");
        var ach = ini_read_real("Achievements", "ach10", 0);
        if (ach == 0)
        {
            ini_write_real("Achievements", "ach10", 1);
            instance_create(x, y, obj_achievement_focus);
        }
        ini_close();
    }
}
