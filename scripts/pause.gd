extends Control

func _ready():
	# При запуске игры меню паузы скрыто
	visible = false

func _input(event):
	# Проверяем нажатие клавиши Escape
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_ESCAPE:
			# Переключаем видимость (если было скрыто — покажем, и наоборот)
			visible = not visible
			# Включаем или выключаем паузу игры
			get_tree().paused = visible
