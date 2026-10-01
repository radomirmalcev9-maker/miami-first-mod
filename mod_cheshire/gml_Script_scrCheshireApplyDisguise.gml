// scrCheshireApplyDisguise() — вызвать после штатной анимации objPlayer.
if (cheshire_equipped && is_disguised && cheshire_disguise_sprite >= 0)
{
    // Штатная анимация игрока могла поменять sprite_index в этом кадре.
    // Возвращаем внешний вид уничтоженного врага, не сбрасывая кадр анимации.
    sprite_index = cheshire_disguise_sprite;
    image_speed = cheshire_disguise_image_speed;
    image_xscale = cheshire_disguise_xscale;
    image_yscale = cheshire_disguise_yscale;
    image_angle = cheshire_disguise_angle;
    image_blend = cheshire_disguise_blend;
}
