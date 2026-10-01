// scrCheshireReset() — вызывать из Clean Up, Room End и при отключении маски.
scrCheshireSetBulletTime(false, bullet_time_factor);
if (cheshire_equipped && is_disguised)
{
    scrCheshireBreak("collision");
}
swap_aiming = false;
swap_target_id = noone;
is_disguised = false;
phase_timer = 0;
invulnerable = false;
