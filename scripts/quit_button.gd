extends Button

func _ready() -> void:
	pressed.connect(press)
	
func press():
	get_tree().quit()
