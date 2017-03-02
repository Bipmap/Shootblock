audio_stop_sound(snd_music1);
audio_stop_sound(snd_music2);
audio_stop_sound(snd_music3);
audio_play_sound(snd_death, 0, 0);
with (obj_player)
{
    instance_destroy();
    instance_create(x, y, obj_player_death);
}
with (obj_pistol) instance_destroy();
with (obj_zooka) instance_destroy();
with (obj_shotgun) instance_destroy();
with (obj_smg) instance_destroy();
with (obj_revolver) instance_destroy();
with (obj_spingun) instance_destroy();
with (obj_landmines) instance_destroy();
with (obj_launcher) instance_destroy();
with (obj_rivetgun) instance_destroy();
with (obj_cursor) instance_destroy();
with (obj_camera) instance_destroy();
with (obj_pause) instance_destroy();
with (obj_slowmo) instance_destroy();
with (obj_hat) instance_destroy();
with (obj_reload) instance_destroy();
obj_combo.timer = 0;
obj_combo.alarm[1] = 2;
global.smod = 1;

//Check for achievements
scr_achievement_dunce();
scr_achievement_wave();
