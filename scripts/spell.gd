extends LineEdit

func _ready() -> void:
	editable = false
	focus_mode = Control.FOCUS_NONE
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and not editable:
		editable = true
		focus_mode = Control.FOCUS_ALL
		grab_focus()
		
func _ready_to_submit() -> void :
	text_submitted.connect(_on_text_submited)
	
func _on_text_submited(new_text: String) -> void:
	print(new_text)
	clear()
	
	editable = false
	focus_mode = Control.FOCUS_NONE
