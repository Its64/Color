extends Node2D

var color = preload("res://Scenes/Colors.tscn")
var timeout = true
var colorTemp

@onready var timer = get_node("Timer")
@onready var timer2 = get_node("Timer2")
@onready var player = get_node("Player")

func _ready():
	pass

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if direction:
		if timeout == true:
			colorTemp = color.instantiate()
			colorTemp.position = player.position
			add_child(colorTemp)
			colorTemp.play("idle")
			timeout = false
			timer.start()
			timer2.start()

func _process(delta):
	pass

func _on_timer_timeout():
	timeout = true
	timer.stop()

func _on_timer_2_timeout():
	timer2.stop()
