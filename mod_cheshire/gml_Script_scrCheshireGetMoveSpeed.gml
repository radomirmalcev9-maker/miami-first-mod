// scrCheshireGetMoveSpeed(base_speed)
var _base_speed = argument0;
if (cheshire_equipped && phase_timer > 0)
{
    return _base_speed * phase_speed_boost;
}
return _base_speed;
