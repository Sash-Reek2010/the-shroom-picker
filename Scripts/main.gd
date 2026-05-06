extends Node

const enoki_node = preload("res://Scenes/enoki.tscn")

const enoki_to_create = [
		Vector2(0, 0),
		Vector2(100, 200),
		Vector2(400, 300),
		Vector2(123, 456),
		Vector2(456, 789),
		Vector2(-100, -200),
		Vector2(350, 800),
		Vector2(30, 800),
		Vector2(-25, 700),
	]
		
var enoki_nodes = []
func _ready():
	for position in enoki_to_create:
		var enoki = enoki_node.instantiate()
		enoki.position = position 
		add_child(enoki)
		enoki_nodes.append(enoki)
	_connect_signals()
func _connect_signals():
	for enoki in enoki_nodes:
		enoki.collected.connect(_enoki_collected)
func _enoki_collected():
	$Player.increase_score("enoki")
	
