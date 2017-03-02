audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: room_goto(rm_level1);
    break;
    
    case 1: room_goto(rm_level2);
    break;
    
    case 2: room_goto(rm_level3);
    break;
    
    case 3: room_goto(rm_menu);
    break;
}
