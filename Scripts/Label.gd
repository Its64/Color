extends Label

@onready var timer = get_node("../../Timer3")

func _ready():
	pass

func _process(delta):
	text = str(ceil(timer.get_time_left()))
