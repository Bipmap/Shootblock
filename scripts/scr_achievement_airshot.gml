ini_open("achievements.ini");
var ach = ini_read_real("Achievements", "ach9", 0);
if (ach == 0)
{
    ini_write_real("Achievements", "ach9", 1);
    instance_create(x, y, obj_achievement_airshot);
}
ini_close();
