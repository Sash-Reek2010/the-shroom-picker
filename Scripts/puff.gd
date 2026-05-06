extends Area2D
signal collected 
var freeyourself = false

func _process(delta: float) -> void:
	if freeyourself:
		self.free()
		
func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("Collected")
		collected.emit()
		freeyourself = true
	
