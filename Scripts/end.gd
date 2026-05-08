extends CanvasLayer

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	visible = false
	$VBoxContainer/Button.pressed.connect(_on_quit)

func show_screen(score_labels):
	var total = 0
	for label in score_labels:
		total += label.val
	$VBoxContainer/Label.text = "Mushrooms Collected: " + str(total)
	visible = true

func _on_quit():
	get_tree().quit()
	
