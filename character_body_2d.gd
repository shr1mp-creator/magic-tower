extends CharacterBody2D

@export var speed: float = 300.0
@export var accelar: float = 500.0
@export var fricsh: float = 450.0

func _physics_process(delta: float) -> void:
	var input_dir := Vector2(
		Input.get_axis("ui_left","ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)
	if input_dir != Vector2.ZERO:
		input_dir = input_dir.normalized()
		
	if input_dir != Vector2.ZERO:
		velocity = velocity.move_toward(input_dir * speed, accelar * delta)
	else: 
		velocity = velocity.move_toward(Vector2.ZERO, fricsh * delta)
		
	move_and_slide()
