extends StaticBody2D

var is_inzone = false

func _ready():
	pass

func _input(event):
	if is_inzone == true:
		if event.is_action_pressed("ui_accept"):
			Global.current_level += 1
			if Global.current_level == 6:
				get_tree().change_scene_to_file("res://Scenes/Win.tscn")
			get_tree().change_scene_to_file("res://Scenes/Level" + str(Global.current_level) + ".tscn")

func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	is_inzone = true

func _on_area_2d_body_exited(body):
	is_inzone = false
