// scrCheshireCanTakeDamage(player_id)
// false означает: пропустить штатное применение урона и hit-stun.
var _player = argument0;
if (_player == noone || !instance_exists(_player))
{
    return true;
}

if (variable_instance_exists(_player, "cheshire_equipped")
    && _player.cheshire_equipped
    && variable_instance_exists(_player, "invulnerable")
    && _player.invulnerable)
{
    return false;
}
return true;
