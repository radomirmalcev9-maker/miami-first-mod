// scrCheshireBreak(reason)
// reason: melee, shoot, pickup, throw или collision.
var _reason = argument0;
var _break_disguise = (_reason == "melee"
    || _reason == "shoot"
    || _reason == "pickup"
    || _reason == "throw"
    || _reason == "collision");

if (!cheshire_equipped)
{
    return;
}

if (_break_disguise && is_disguised)
{
    is_disguised = false;
    sprite_index = cheshire_base_sprite;
    image_index = cheshire_base_image_index;
    image_speed = cheshire_base_image_speed;
    image_xscale = cheshire_base_xscale;
    image_yscale = cheshire_base_yscale;
    image_angle = cheshire_base_angle;
    image_blend = cheshire_base_blend;
    cheshire_disguise_sprite = -1;
}

// Выстрел или бросок оружия гасят фазу немедленно.
if (_reason == "shoot" || _reason == "throw")
{
    phase_timer = 0;
    invulnerable = false;
}
