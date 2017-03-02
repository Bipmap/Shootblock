if (reload_counter == 3 && room != rm_range)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach6", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach6", 1);
        instance_create(x, y, obj_achievement_reload);
    }
    ini_close();
}
