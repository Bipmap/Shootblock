audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: room_goto(rm_tutorial);
    break;
    
    case 1:
    global.easy = 1;
    room_goto(rm_levelselect);
    break;
    
    case 2:
    global.easy = 0;
    room_goto(rm_levelselect);
    break;
    
    case 3: room_goto(rm_menu);
    break;
}
