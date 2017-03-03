var k=keyboard_lastkey;
var c=keyboard_lastchar;

if keyboard_check_pressed(vk_anykey)
{
    if (k==vk_backspace)
    {
        // delete last character
        txt_input = string_copy(txt_input, 1, string_length(txt_input)-1 );
    }
    else if (k==vk_escape)
    {
        // Exit text input
        //Stop text entry
        global.text_entry = 0;
        
        //Create online leaderboards
        get_highscores = 1;
        
        //Clear txt_input
        txt_input = "";
        
        //Recreate gameover
        instance_create(0, 0, obj_gameover);
        
    }
    else if (k==vk_enter) and (txt_input!="")
    {
        // enter was pressed and input wasn't empty : do what have to be done here !
        //Use entered name
        var player_name = txt_input
        
        //Use score
        var player_score = global.submit;
        
        //Get level
        switch (room)
        {
            case rm_level1: tagid_l = tagid[0];
            break;
            
            case rm_level2: tagid_l = tagid[1];
            break;
            
            case rm_level3: tagid_l = tagid[2];
            break;
        }
        
        //send the name and score to gmscoreboard.com
        gmsb_post = http_post_string("http://gmscoreboard.com/handle_score.php?tagid="
        +string(tagid_l)+
        "&player="+string(player_name)+
        "&score="+string(player_score),"");
        
        //Stop text entry
        global.text_entry = 0;
        
        //Create online leaderboards
        get_highscores = 1;
        
        //Clear txt_input
        txt_input = "";
        
        //Don't allow resubmit
        submitted = 1;
        
        //Recreate gameover
        instance_create(0, 0, obj_gameover);
    }
    else if (k>=65 and k<=90 or k>=97 and k<=122 or k>=48 and k<=57 or k==192 or k==32)
    {
        // 65-90  : upcase letters
        // 122-192 : lowercase letters
        // 48-57  : numbers
        // 192   : I don't remember :P
        // 32   : space
        // Add c to txt_input
        txt_input = txt_input + c;
    }
    if (string_length(txt_input) > 14)
    {
        // delete last character
        txt_input = string_copy(txt_input, 1, string_length(txt_input)-1 );
    }
}
