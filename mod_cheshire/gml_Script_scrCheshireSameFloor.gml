// scrCheshireSameFloor(player_id, enemy_id)
// Если проект хранит этаж в floor_id или z, не даём целиться через этажи.
var _player = argument0;
var _enemy = argument1;

if (_player == noone || _enemy == noone)
{
    return false;
}
if (!instance_exists(_player) || !instance_exists(_enemy))
{
    return false;
}

if (variable_instance_exists(_player, "floor_id")
    && variable_instance_exists(_enemy, "floor_id"))
{
    return (_player.floor_id == _enemy.floor_id);
}

if (variable_instance_exists(_player, "z")
    && variable_instance_exists(_enemy, "z"))
{
    return (_player.z == _enemy.z);
}

// В Hotline Miami этажи обычно разделены комнатами; instance_position
// в любом случае ищет цель только в текущей комнате.
return true;
