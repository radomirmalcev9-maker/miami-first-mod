// scrCheshireCanAlertPlayer(player_id)
// Вставить только перед переходом objEnemy в состояние тревоги/атаки на игрока.
var _player = argument0;
if (_player != noone && instance_exists(_player)
    && variable_instance_exists(_player, "is_disguised")
    && _player.is_disguised)
{
    return false;
}
return true;
