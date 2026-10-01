// scrCheshireTrySwap(enemy_id) — вызвать при отпускании F.
var _enemy = argument0;

if (!cheshire_equipped || swap_cooldown > 0)
{
    return false;
}
if (!scrCheshireTargetValid(id, _enemy))
{
    return false;
}

var _target_x = _enemy.x;
var _target_y = _enemy.y;
var _target_sprite = _enemy.sprite_index;
var _target_image = _enemy.image_index;
var _target_image_speed = _enemy.image_speed;
var _target_xscale = _enemy.image_xscale;
var _target_yscale = _enemy.image_yscale;
var _target_angle = _enemy.image_angle;
var _target_blend = _enemy.image_blend;

// Запоминаем текущий спрайт игрока для восстановления при срыве маскировки.
cheshire_base_sprite = sprite_index;
cheshire_base_image_index = image_index;
cheshire_base_image_speed = image_speed;
cheshire_base_xscale = image_xscale;
cheshire_base_yscale = image_yscale;
cheshire_base_angle = image_angle;
cheshire_base_blend = image_blend;

x = _target_x;
y = _target_y;
instance_destroy(_enemy);

cheshire_disguise_sprite = _target_sprite;
cheshire_disguise_image_speed = _target_image_speed;
cheshire_disguise_xscale = _target_xscale;
cheshire_disguise_yscale = _target_yscale;
cheshire_disguise_angle = _target_angle;
cheshire_disguise_blend = _target_blend;
sprite_index = _target_sprite;
image_index = _target_image;
image_speed = _target_image_speed;
image_xscale = _target_xscale;
image_yscale = _target_yscale;
image_angle = _target_angle;
image_blend = _target_blend;

is_disguised = true;
swap_cooldown = swap_cooldown_max;
return true;
