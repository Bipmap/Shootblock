menu[0, 0] = 0;
menu[0, 1] = 0;
menu[0, 2] = 0;
menu[1, 0] = 0;
menu[1, 1] = 0;
menu[1, 2] = 0;
menu[2, 0] = 0;
menu[2, 1] = 0;
menu[2, 2] = 0;
menu[3, 0] = 0;
menu[3, 1] = 0;
menu[3, 2] = 0;


ini_open("achievements.ini");
var n = 1;
for (var h = 0; h < array_height_2d(menu); h++)
{
    for (var l = 0; l < array_length_2d(menu, h); l++)
    {
        achieved = ini_read_real("Achievements", "ach" + string(n), 0);
        if (achieved == 1) menu[h, l] = n;
        n++;
    }
}
