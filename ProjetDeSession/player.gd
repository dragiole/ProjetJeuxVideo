extends CharacterBody2D

@export var max_speed: float = 1500.0
@export var acceleration: float = 10.0

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()

	if direction.length() > 0:
		velocity = velocity.lerp(direction * max_speed, acceleration * delta)
	else:
		velocity = velocity.lerp(Vector2.ZERO, acceleration * delta)

	# Pour pointer vers la souris
	# look_at(get_global_mouse_position())

	move_and_slide()
