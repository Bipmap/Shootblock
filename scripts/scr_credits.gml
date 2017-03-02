audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: break;
    
    case 1: url_open('https://www.youtube.com/channel/UCNrF2EMO1_JF0hvwGvFywHg');
    break;
    
    case 2: room_goto(rm_extras);
    break;
}
