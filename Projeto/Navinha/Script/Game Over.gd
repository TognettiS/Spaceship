extends Node2D



func _ready():
	$Musica.play()
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://Scene/Game.tscn")
	Global.pontos = 0
	Global.vidas = 3
	Global.speed = -100
	Global.inim = 0
