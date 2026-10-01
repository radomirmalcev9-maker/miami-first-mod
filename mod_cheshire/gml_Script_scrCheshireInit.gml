// scrCheshireInit(mask_id) — вызвать в контексте objPlayer после выбора маски.
cheshire_mask_id = "mask_cheshire";
cheshire_equipped = (argument0 == cheshire_mask_id);

swap_cooldown_max = 1140;
swap_cooldown = 0;
bullet_time_factor = 0.1;
swap_aiming = false;
swap_target_id = noone;
cheshire_f_was_down = false;

phase_duration = 84;
phase_timer = 0;
phase_speed_boost = 1.6;
invulnerable = false;
is_disguised = false;

cheshire_disguise_sprite = -1;
cheshire_disguise_image_speed = 1;
cheshire_disguise_xscale = 1;
cheshire_disguise_yscale = 1;
cheshire_disguise_angle = 0;
cheshire_disguise_blend = c_white;
cheshire_base_sprite = sprite_index;
cheshire_base_image_index = image_index;
cheshire_base_image_speed = image_speed;
cheshire_base_xscale = image_xscale;
cheshire_base_yscale = image_yscale;
cheshire_base_angle = image_angle;
cheshire_base_blend = image_blend;

if (!variable_global_exists("cheshire_time_slowed"))
{
    global.cheshire_time_slowed = false;
    global.cheshire_original_game_speed = 60;
}
