audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: break;

    case 1: score_r = 1;
    break;
    
    case 2: ach_r = 1;
    break;
    
    case 3: room_goto(rm_extras);
    break;
}
