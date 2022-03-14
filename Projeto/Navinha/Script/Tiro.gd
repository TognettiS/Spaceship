extends Node2D

var velocity = -10

func _ready():
	pass 

func _process(delta):
	position.y += velocity









func _on_Area2D_area_entered(area):
	queue_free()
	Global.pontos += 50
