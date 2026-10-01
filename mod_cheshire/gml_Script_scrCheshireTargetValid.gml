// scrCheshireTargetValid(player_id, enemy_id)
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

// instance_position(..., objEnemy) уже ограничивает выбор объектом врага;
// эти проверки исключают трупы и цели, помеченные как убитые.
if (variable_instance_exists(_enemy, "dead") && _enemy.dead)
{
    return false;
}
if (variable_instance_exists(_enemy, "alive") && !_enemy.alive)
{
    return false;
}
if (variable_instance_exists(_enemy, "health") && _enemy.health <= 0)
{
    return false;
}
if (variable_instance_exists(_enemy, "hp") && _enemy.hp <= 0)
{
    return false;
}

return scrCheshireSameFloor(_player, _enemy);
