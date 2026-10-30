extends LineEdit

func _ready() -> void:
	# Подключаем встроенные сигналы Godot
	focus_entered.connect(_on_focus_entered)
	focus_exited.connect(_on_focus_exited)
	text_submitted.connect(_on_text_submitted)

# Когда поле получает фокус (кликнули или нажали Enter для ввода)
func _on_focus_entered() -> void:
	Global.is_typing = true

# Когда фокус уходит из поля
func _on_focus_exited() -> void:
	Global.is_typing = false

# Когда игрок написал текст и нажал Enter
func _on_text_submitted(new_text: String) -> void:
	print("Заклинание введено: ", new_text)
	clear()
	release_focus() # Убираем фокус, движение по WASD автоматически разблокируется!

# Удобная фишка: нажимаем Enter, чтобы сразу начать писать (без мышки!)
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and not has_focus():
		grab_focus()
