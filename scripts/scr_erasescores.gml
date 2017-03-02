audio_play_sound(snd_select, 0, 0);
switch(mpos2)
{
    case 0:
    file_delete("highscores.ini");
    score_r = 0;
    mpos2 = 1;
    break;
    
    case 1:
    score_r = 0;
    mpos2 = 1;
    break;
}
