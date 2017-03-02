audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 0: 
    {
        pause = 0;
        instance_activate_all();
        mpos = 0;
    }
    break;
    
    case 1:
    audio_stop_all();
    room_goto(rm_menu);
    break;
}
