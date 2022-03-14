extends Node2D


func _ready():
	pass 

func _process(delta):
	var pos_y = position.y
	pos_y -= Global.speed * delta
	position.y = pos_y
	
	
	


func _on_Area2D_area_entered(area):
	queue_free()
	Global.inim = 1





func _on_Timer_timeout():
	Global.speed -=50
