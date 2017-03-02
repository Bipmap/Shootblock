audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0:
    global.easy = 0;
    room_goto(rm_levelselect);
    break;
    
    case 1:
    global.easy = 1;
    room_goto(rm_levelselect);
    break;
    
    case 2: room_goto(rm_menu);
    break;
}
