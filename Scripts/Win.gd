extends Control

func _ready():
	Global.current_level = 1

func _process(delta):
	pass

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
