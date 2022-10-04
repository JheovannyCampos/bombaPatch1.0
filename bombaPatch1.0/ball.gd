extends KinematicBody2D

var velocityx = -500
var velocityy = 500
var iniciox
var inicioy

func _ready():
	iniciox = position.x
	inicioy = position.y
	pass # Replace with function body.

func _process(delta):
	var colision = move_and_collide(Vector2(velocityx, velocityy) * delta)
	
	if colision != null:
		if colision.collider.name == 'parede_baixo' || colision.collider.name == 'parede_cima':
			velocityy = -velocityy 
		if colision.collider.name == 'player1' || colision.collider.name == 'player2':
			velocityx = -velocityx
		if colision.collider.name == 'parede_esquerda':
			position.x = iniciox
			velocityx = velocityx - 50
		if colision.collider.name == 'parede_direita':
			position.y = inicioy
			velocityy = velocityy + 50
			
			
	pass
