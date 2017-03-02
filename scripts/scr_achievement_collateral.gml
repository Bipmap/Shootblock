if (collisions == 3)
{
    ini_open("achievements.ini");
    var ach = ini_read_real("Achievements", "ach7", 0);
    if (ach == 0)
    {
        ini_write_real("Achievements", "ach7", 1);
        instance_create(x, y, obj_achievement_collateral);
    }
    ini_close();
}
