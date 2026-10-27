extends Button


func _ready():
	pressed.connect(press)


func press():
	get_tree().quit()
