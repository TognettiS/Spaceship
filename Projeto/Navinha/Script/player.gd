extends RigidBody2D

signal change_lifes(player_heart)

var tiro
onready var tiro_cena = preload("res://Scene/Tiro.tscn")
var tiro_velo = 400
var tempot = 1

var MOVE_SPEED = 200

func _ready():
	linear_velocity = Vector2(0,0)
	connect("change_lifes",get_parent().get_node("CanvasLayer/Control"), "perdevida")
	emit_signal("change_lifes",Global.vidas)
	$Musica.play()

func _process(delta):
	
	#movimenta player para direita
	if Input.is_action_just_pressed("ui_right"):
		linear_velocity = Vector2(MOVE_SPEED,0)
	
	#movimenta player para esquerda
	if Input.is_action_just_pressed("ui_left"):
		linear_velocity = Vector2(-1 * MOVE_SPEED,0)
	
	if Input.is_action_just_pressed("Space"):
		if (tempot == 1):
			atirar()
			tempot = 0
			$TimerTiro.start()
	
	if (Global.inim == 1):
		$Explosao.play()

func atirar():
	tiro = tiro_cena.instance()
	get_parent().add_child(tiro)
	tiro.set_position(Vector2(position.x,-30))
	$Tiro.play()



func _on_TimerVeloP_timeout():
	MOVE_SPEED += 5


func _on_TimerTiro_timeout():
	tempot = 1
