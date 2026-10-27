extends Button

func _ready():
	pressed.connect(setting)

func setting():
	get_tree().change_scene_to_file("res://settings.tscn")
