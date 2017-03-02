if (global.combo == 10)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach2", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach2", 1);
        instance_create(x, y, obj_achievement_combo10);
    }
    ini_close();
}

if (global.combo == 25)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach3", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach3", 1);
        instance_create(x, y, obj_achievement_combo25);
    }
    ini_close();
}


if (global.combo == 100)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach4", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach4", 1);
        instance_create(x, y, obj_achievement_combo100);
    }
    ini_close();
}

