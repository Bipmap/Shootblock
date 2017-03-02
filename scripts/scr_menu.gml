audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: room_goto(rm_difficulty);
    break;
    
    case 1: room_goto(rm_range);
    break;
    
    case 2: room_goto(rm_extras);
    break;
    
    case 3: game_end();
    break;
}
