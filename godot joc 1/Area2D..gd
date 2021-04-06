extends Area2D

func teleport(object, end, offset):
	object.position = end.position + offset
