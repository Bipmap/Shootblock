audio_play_sound(snd_select, 0, 0);
switch(mpos)
{
    case 1: global.hat = 0;
    break;
    
    case 2: global.hat = 1;
    break;
    
    case 3: global.hat = 2;
    break;
    
    case 4: global.hat = 3;
    break;
    
    case 5: global.hat = 4;
    break;
    
    case 6: global.hat = 5;
    break;
    
    case 7: global.hat = 6;
    break;
    
    case 8: global.hat = 7;
    break;
    
    case 9: global.hat = 8;
    break;
    
    case 10: global.hat = 9;
    break;
    
    case 11: global.hat = 10;
    break;
    
    case 12: global.hat = 11;
    break;
    
    default: global.hat = 0;
    break;
}
scr_savehat();
