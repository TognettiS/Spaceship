extends Node2D


var pontos_prev = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	Global.inim = 0
	if (pontos_prev != Global.pontos):
		pontuar()


func pontuar():
	$Control/Label.set_text("Pontos:"+str(Global.pontos))
	
