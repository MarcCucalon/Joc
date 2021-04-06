extends KinematicBody2D
export var gravity = 750.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var monedes = 0
func _physics_process(delta):
	velocitat.y += gravity * delta
	velocitat = move_and_slide(velocitat,Vector2.UP)
func _process(delta):
	moviment.x=0
	if Input.is_action_just_pressed("saltar"):
		$player.play("saltar esquerra")
		if is_on_floor():
			velocitat += Vector2(0,-25500) * delta
			rotation_degrees =  0
	if Input.is_action_pressed("ui_right"):
		$player.play('caminar esquerra')
		$player.flip_h = true
		moviment = Vector2(20000,0) * delta
		rotation_degrees =  0 
	elif Input.is_action_pressed("ui_left"):
		$player.flip_h = false
		$player.play('caminar esquerra')
		moviment = Vector2(-20000,0) * delta
		rotation_degrees =  0
	moviment = move_and_slide(moviment, Vector2.UP)
	if moviment.x == 0:
		$player.play('estar quiet')
	$Label.text = 'Monedes:' + str( monedes)
