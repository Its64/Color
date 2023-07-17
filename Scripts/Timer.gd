extends Timer

func _ready():
	pass

func _process(delta):
	pass

func _on_timeout():
	get_tree().change_scene_to_file("res://Scenes/Lose.tscn")
