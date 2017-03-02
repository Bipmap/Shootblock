if (loading)
{
    draw_set_color(c_white);
    draw_set_font(fnt_menu3);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width/2, room_height/2, "Loading...");
}
else
{
    draw_set_color(c_white);
    draw_set_font(fnt_highscores);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width/3, room_height/3 + 22, "Top players:");
    draw_text(room_width/1.5, room_height/3 + 22, "Top scores:");
    var s;
    for (s = 0; s < (array_length_1d(gmsb_topnames) - 1); s++)
    {
        draw_text(room_width/3, room_height/3 + s*25 + 55, string(gmsb_topnames[s]));
        draw_text(room_width/1.5, room_height/3 + s*25 + 55, string(gmsb_topscores[s]));
    }
}
