// scrCheshireDrawPlayer() — вызывать вместо штатного draw_self() в objPlayer Draw.
if (cheshire_equipped && phase_timer > 0)
{
    // Полупрозрачное тело и две цветовые копии создают спрайтовый глитч.
    draw_set_alpha(0.52);
    draw_self();
    draw_sprite_ext(
        sprite_index, image_index, x - 2, y,
        image_xscale, image_yscale, image_angle, c_aqua, 0.38
    );
    draw_sprite_ext(
        sprite_index, image_index, x + 2, y,
        image_xscale, image_yscale, image_angle, c_fuchsia, 0.38
    );
}
else
{
    draw_self();
}

draw_set_alpha(1);
draw_set_color(c_white);

if (cheshire_equipped && swap_aiming)
{
    scrCheshireDrawTargets();
}
