if (global.wave >= 15)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach12", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach12", 1);
        instance_create(x, y, obj_achievement_wave);
    }
    ini_close();
}
