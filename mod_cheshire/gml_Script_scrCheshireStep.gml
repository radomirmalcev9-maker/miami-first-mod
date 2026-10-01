// scrCheshireStep() — вставить в Step objPlayer один раз за кадр.
if (!cheshire_equipped)
{
    if (variable_global_exists("cheshire_time_slowed") && global.cheshire_time_slowed)
    {
        scrCheshireSetBulletTime(false, bullet_time_factor);
    }
    swap_aiming = false;
    swap_target_id = noone;
    cheshire_f_was_down = keyboard_check(ord("F"));
    return;
}

var _ticks = scrCheshireFrameTicks();
swap_cooldown = max(0, swap_cooldown - _ticks);
phase_timer = max(0, phase_timer - _ticks);
invulnerable = (phase_timer > 0);

// Плотное столкновение с живым врагом раскрывает игрока.
if (is_disguised && place_meeting(x, y, objEnemy))
{
    scrCheshireBreak("collision");
}

var _f_down = keyboard_check(ord("F"));

// Подмена начинается только новым нажатием F и только когда готов откат.
if (_f_down && !cheshire_f_was_down && swap_cooldown <= 0)
{
    swap_aiming = true;
    swap_target_id = noone;
}

if (_f_down && swap_aiming)
{
    scrCheshireSetBulletTime(true, bullet_time_factor);

    var _candidate = instance_position(mouse_x, mouse_y, objEnemy);
    if (scrCheshireTargetValid(id, _candidate))
    {
        swap_target_id = _candidate;
    }
    else
    {
        swap_target_id = noone;
    }
}
else if (!_f_down && cheshire_f_was_down)
{
    // Отпускание F фиксирует последнюю подсвеченную цель.
    scrCheshireSetBulletTime(false, bullet_time_factor);
    if (swap_aiming && swap_cooldown <= 0)
    {
        scrCheshireTrySwap(swap_target_id);
    }
    swap_aiming = false;
    swap_target_id = noone;
}

cheshire_f_was_down = _f_down;
