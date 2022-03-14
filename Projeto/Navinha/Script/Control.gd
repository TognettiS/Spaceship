extends Control

var heart_size: int = 54

func _ready():
	pass 

func perdevida(player_heart):
	$heart.rect_size.x = heart_size * player_heart
	
