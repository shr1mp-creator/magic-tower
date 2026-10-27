extends HSlider

@export var bus_name: String = "SFX"
@onready var bus_index = AudioServer.get_bus_index(bus_name)

func _ready():
	min_value = 0.0
	max_value = 1.0
	step = 0.05
	
	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))
	
	value_changed.connect(_on_value_changed)

func _on_value_changed(new_value: float):
	if new_value == 0:
		AudioServer.set_bus_mute(bus_index, true)
	else:
		AudioServer.set_bus_mute(bus_index, false)
		AudioServer.set_bus_volume_db(bus_index, linear_to_db(new_value))
