// scrCheshireSetBulletTime(enable, factor)
// game_set_speed уменьшает частоту симуляции мира, а не только анимацию игрока.
var _enable = argument0;
var _factor = argument1;

if (!variable_global_exists("cheshire_time_slowed"))
{
    global.cheshire_time_slowed = false;
    global.cheshire_original_game_speed = 60;
}

if (_enable)
{
    if (!global.cheshire_time_slowed)
    {
        global.cheshire_original_game_speed = max(1, game_get_speed(gamespeed_fps));
        global.cheshire_time_slowed = true;
        game_set_speed(
            max(1, round(global.cheshire_original_game_speed * _factor)),
            gamespeed_fps
        );
    }
}
else if (global.cheshire_time_slowed)
{
    game_set_speed(global.cheshire_original_game_speed, gamespeed_fps);
    global.cheshire_time_slowed = false;
}
