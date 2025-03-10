extends Node

@warning_ignore("unused_signal")
signal experience_gained(event: ExperienceGainEvent);

@warning_ignore("unused_signal")
signal post_experience_gained(event: PostExperienceGainEvent);

@warning_ignore("unused_signal")
signal level_up(event: LevelUpEvent);

@warning_ignore("unused_signal")
signal enemy_dead(event: EntityDeathEvent);
