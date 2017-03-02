audio_play_sound(snd_select, 0, 0);
switch(mpos2)
{
    case 0:
    file_delete("achievements.ini");
    ach_r = 0;
    mpos2 = 1;
    global.hat = 0;
    break;
    
    case 1:
    ach_r = 0;
    mpos2 = 1;
    break;
}
