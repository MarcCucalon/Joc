extends Node2D

const offset = Vector2(175,840)
func _on_Area2D_body_entered(body):
	$Area2D.teleport($jugador, $Area2D, offset)
