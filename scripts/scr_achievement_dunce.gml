if (global.score == 0)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach5", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach5", 1);
        instance_create(x, y, obj_achievement_dunce);
    }
    ini_close();
}
