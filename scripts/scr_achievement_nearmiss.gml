if (instance_exists(obj_player))
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach8", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach8", 1);
        instance_create(x, y, obj_achievement_nearmiss);
    }
    ini_close();
}
