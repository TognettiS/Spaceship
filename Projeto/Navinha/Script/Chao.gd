extends Node2D

onready var player = get_parent().get_node("player")

func _ready():
	pass


func _on_Area2D_area_entered(area):
	
	Global.pontos -= 100
	Global.vidas -= 1
	player.emit_signal("change_lifes",Global.vidas)
	if (Global.vidas == 0) :
		get_tree().change_scene("res://Scene/GameOver.tscn")
