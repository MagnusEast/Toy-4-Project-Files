extends Node2D

@export var target_tracker: TargetTracker = null;
@export var detection_area: Area2D = null;
@export var detected_state: String = "";

func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:
	var nearest: Node2D = AttackArea.get_hit_nearest_body(self.detection_area);
	if nearest != null:
		self.on_body_enter_detection(nearest);
	
func on_body_enter_detection(body: Node2D):
	if !StateMachine.is_active_state(self):
		return;
	target_tracker.set_target(body);
	StateMachine.switch_state(self, detected_state);
