extends Button

const NEXT_SCENE_PATH = "res://scene-2.tscn"

func _ready():
	pressed.connect(play)

func play():
	get_tree().change_scene_to_file(NEXT_SCENE_PATH)
