extends KinematicBody2D

var speed = 400

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("cima"):
		velocity.y -= 1
	if Input.is_action_pressed("baixo"):
		velocity.y += 1	
	move_and_slide(velocity * speed)
	
	
