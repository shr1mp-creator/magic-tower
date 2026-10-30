extends Button

func _ready():
	pressed.connect(back)

func back():
	get_tree().change_scene_to_file("res://scenes/control.tscn")
