if (full_held && room != rm_range)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach11", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach11", 1);
        instance_create(x, y, obj_achievement_spray);
    }
    ini_close();
}
