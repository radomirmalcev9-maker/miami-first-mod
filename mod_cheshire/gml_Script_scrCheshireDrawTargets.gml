// scrCheshireDrawTargets() — вызывать из Draw objPlayer во время удержания F.
if (!cheshire_equipped || !swap_aiming)
{
    return;
}

var _count = instance_number(objEnemy);
var _i = 0;
draw_set_alpha(0.9);
while (_i < _count)
{
    var _enemy = instance_find(objEnemy, _i);
    if (scrCheshireTargetValid(id, _enemy))
    {
        if (_enemy == swap_target_id)
        {
            draw_set_color(c_fuchsia);
        }
        else
        {
            draw_set_color(c_aqua);
        }
        draw_rectangle(
            _enemy.bbox_left,
            _enemy.bbox_top,
            _enemy.bbox_right,
            _enemy.bbox_bottom,
            false
        );
    }
    _i += 1;
}
draw_set_alpha(1);
draw_set_color(c_white);
