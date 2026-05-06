extends Node

const enoki_node = preload("res://Scenes/enoki.tscn")
const wood_node = preload("res://Scenes/wood.tscn")
const puff_node = preload("res://Scenes/puff.tscn")
const morel_node = preload("res://Scenes/morel.tscn")
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
const wood_to_create = [
		Vector2(0,100)
	]
const puff_to_create = [
	Vector2(-100,0)
]
const morel_to_create = [
	Vector2(0,100)
]

var enoki_nodes = []
var wood_nodes = []
var puff_nodes = []
var morel_nodes = []

func _ready():
	for position1 in enoki_to_create:
		var enoki = enoki_node.instantiate()
		enoki.position = position1 
		add_child(enoki)
		enoki_nodes.append(enoki)
	for position2 in wood_to_create:
		var wood = wood_node.instantiate()
		wood.position = position2
		add_child(wood)
		wood_nodes.append(wood)
	for position3 in puff_to_create:
		var puff = puff_node.instantiate()
		puff.position = position3
		add_child(puff)
		puff_nodes.append(puff)
	for position4 in morel_to_create:
		var morel = morel_node.instantiate()
		morel.position = position4 
		add_child(morel)
		morel_nodes.append(morel)
	_connect_signals()
func _connect_signals():
	for enoki in enoki_nodes:
		enoki.collected.connect(_enoki_collected)
	for wood in wood_nodes:
		wood.collected.connect(_wood_collected)
	for puff in puff_nodes:
		puff.collected.connect(_puff_collected)
	for morel in morel_nodes:
		morel.collected.connect(_morel_collected)
func _enoki_collected():
	$Player.increase_score("enoki")
func _wood_collected():
	$Player.increase_score("wood")
func _puff_collected():
	$Player.increase_score("puff")
func _morel_collected():
	$Player.increase_score("morel")	
