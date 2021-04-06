extends Node2D

var posicio
func _ready():
	posicio = get_node('portaldestination').get_global_position()
func _on_Area2D_body_entered(body):
	if body.name == 'jugador':
		body.set_position(posicio)
