extends Node

const enoki_node = preload("res://Scenes/enoki.tscn")
const wood_node = preload("res://Scenes/wood.tscn")
const puff_node = preload("res://Scenes/puff.tscn")
const morel_node = preload("res://Scenes/morel.tscn")

const enoki_to_create = [
	Vector2(-400, -300),
	Vector2(200, 100),
	Vector2(600, -500),
	Vector2(-200, 500),
	Vector2(800, 300),
	Vector2(-600, 200),
	Vector2(400, -200),
	Vector2(0, 600),
	Vector2(-200, -1600),
	Vector2(500, -2000),
	Vector2(100, -2400),
	Vector2(700, -1800),
	Vector2(-100, -2600),
	Vector2(300, -1500),
	Vector2(-4200, -600),
	Vector2(-3600, 200),
	Vector2(-3000, -400),
	Vector2(-4000, 500),
	Vector2(-3300, -700),
	Vector2(-2900, 600),
	Vector2(2700, -400),
	Vector2(3300, 300),
	Vector2(3900, -600),
	Vector2(4200, 500),
	Vector2(3000, 600),
	Vector2(2600, -200),
	Vector2(100, 1600),
	Vector2(500, 2000),
	Vector2(200, 2400),
	Vector2(700, 1800),
	Vector2(-100, 2600),
	Vector2(400, 1500),
	Vector2(-800, -100),
	Vector2(900, -400),
	Vector2(-500, 700),
	Vector2(-3800, -200),
	Vector2(-3100, 700),
	Vector2(3500, -300),
	Vector2(4400, 200),
	Vector2(300, 2200),
	Vector2(600, 1700),
]

const wood_to_create = [
	Vector2(-700, 500),
	Vector2(800, -100),
	Vector2(-100, -700),
	Vector2(-4500, 100),
	Vector2(-3200, -700),
	Vector2(3600, 200),
	Vector2(4500, -200),
	Vector2(500, 2600),
	Vector2(200, 1600),
	Vector2(300, -400),
	Vector2(-500, 300),
	Vector2(700, 200),
	Vector2(-300, -600),
	Vector2(100, 400),
	Vector2(500, -300),
	Vector2(400, -1700),
	Vector2(-100, -2100),
	Vector2(600, -2300),
	Vector2(200, -1500),
	Vector2(-200, -2500),
	Vector2(700, -1900),
	Vector2(-4300, 300),
	Vector2(-3700, -500),
	Vector2(-3100, 400),
	Vector2(-4000, -300),
	Vector2(-3400, 600),
	Vector2(-2900, -600),
	Vector2(2800, 400),
	Vector2(3400, -500),
	Vector2(4000, 300),
	Vector2(3100, -300),
	Vector2(3700, 600),
	Vector2(4300, -400),
	Vector2(300, 1700),
	Vector2(-100, 2100),
	Vector2(600, 2300),
	Vector2(100, 1500),
	Vector2(400, 2500),
	Vector2(700, 1900),
]

const puff_to_create = [
	Vector2(-600, -200),
	Vector2(400, 500),
	Vector2(-200, -500),
	Vector2(600, 100),
	Vector2(0, 300),
	Vector2(-400, 600),
	Vector2(300, -1600),
	Vector2(-200, -2000),
	Vector2(700, -2200),
	Vector2(100, -2500),
	Vector2(500, -1800),
	Vector2(-100, -1500),
	Vector2(-4100, -400),
	Vector2(-3500, 500),
	Vector2(-2900, -600),
	Vector2(-3800, 300),
	Vector2(-3200, -200),
	Vector2(-4300, 600),
	Vector2(2900, -300),
	Vector2(3500, 500),
	Vector2(4100, -500),
	Vector2(3200, 400),
	Vector2(3800, -200),
	Vector2(2600, 600),
	Vector2(200, 1600),
	Vector2(600, 2000),
	Vector2(-100, 2300),
	Vector2(400, 1800),
	Vector2(100, 2500),
	Vector2(700, 1500),
	Vector2(700, -100),
	Vector2(-800, 400),
	Vector2(300, 700),
	Vector2(-4400, 200),
	Vector2(-3000, 700),
	Vector2(3300, -600),
	Vector2(4400, 300),
	Vector2(500, 1700),
	Vector2(300, 2600),
]

const morel_to_create = [
	Vector2(-300, 400),
	Vector2(500, -300),
	Vector2(-700, -400),
	Vector2(200, 600),
	Vector2(-100, -200),
	Vector2(700, 400),
	Vector2(600, -1700),
	Vector2(100, -2100),
	Vector2(-200, -2300),
	Vector2(400, -2600),
	Vector2(700, -1500),
	Vector2(200, -1900),
	Vector2(-4200, 400),
	Vector2(-3600, -600),
	Vector2(-3000, 500),
	Vector2(-4400, -200),
	Vector2(-3300, 300),
	Vector2(-2900, -400),
	Vector2(3000, -400),
	Vector2(3600, 500),
	Vector2(4200, -300),
	Vector2(2700, 300),
	Vector2(3900, -600),
	Vector2(4400, 400),
	Vector2(400, 1700),
	Vector2(100, 2200),
	Vector2(600, 2400),
	Vector2(200, 1500),
	Vector2(700, 2000),
	Vector2(-100, 2600),
	Vector2(-600, 500),
	Vector2(800, 100),
	Vector2(-400, -700),
	Vector2(-4300, 500),
	Vector2(-3500, -400),
	Vector2(3200, 600),
	Vector2(4300, -500),
	Vector2(600, 1600),
	Vector2(400, 2800),
]

var enoki_nodes = []
var wood_nodes = []
var puff_nodes = []
var morel_nodes = []

func _ready():
	var end_screen = preload("res://Scenes/end.tscn").instantiate()
	add_child(end_screen)
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
	
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = true
		$End.show_screen($Player.score_labels)
