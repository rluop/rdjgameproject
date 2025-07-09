extends CharacterBody2D

@export var speed = 400

func _get_input():
	var inputDirection = Input.get_vector("left", "right", "up", "down")
	velocity = inputDirection * speed

func _physics_process(delta):
	_get_input()
	move_and_slide()
