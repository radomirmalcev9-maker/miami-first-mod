// scrCheshireOnMeleeKill() — вызвать только после подтверждённого убийства
// холодным оружием или добивания лежачего врага.
if (cheshire_equipped)
{
    phase_timer = phase_duration;
    invulnerable = true;
}
