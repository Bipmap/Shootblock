audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: room_goto(rm_options);
    break;
    
    case 1: room_goto(rm_achievements);
    break;
    
    case 2: room_goto(rm_credits);
    break;
    
    case 3: room_goto(rm_menu);
    break;
}
