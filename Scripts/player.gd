extends CharacterBody2D

var speed = 350.0
	# choose a speed - i'm lowk checking if you're reading the code here,
	# you should change this value so your player moves faster!!

var direction = Vector2.ZERO
const scorescene = preload("res://Scenes/score.tscn")
		# load our little score label node - "const" because we don't need to change this value

	# also preload the images you want to use as icons here:
const icon1 = preload("res://Sprites/enoki.png")	# just usin the default godot icon here :sob:
					
var scores = [
	["enoki", "5", icon1, Vector2(0, 100)]
		
	]
		# ok so this is where we put all the scores we want to track, along with the score we want them
		# to start at, the image we want them to have, and the coordinates we want to put them at.
		# make sure you give each label a different position!! unless you really want them to overlap?
		# you can have them along the top, under the player (like i have them), one in each corner,
		# or even randomly scattered if you want that to make your game extra unique!!

var score_labels = []
		# this is where we'll be putting all of our instantiated score nodes,
		# just to save them for when we need to refer to them
		# (for example to check if we have enough of a certain item)

func _ready() -> void:
		for score in scores:
			var score_label = scorescene.instantiate()
					
			score_label.whatitscounting = score[0]
			score_label.val = int(score[1]) # the starting value of the item
			score_label.text = score[1] # this is the actual text displayed
			score_label.get_node("TextureRect").texture = score[2]
			score_label.position = score[3]
						
			# now, let's add it as a child and chuck it in the score_labels storage list:
			add_child(score_label)
			score_labels.append(score_label)
			
func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	# get the vector (direction for x + y axes combined - you might have done this in maths in school)
	
	velocity = direction * speed
	# velocity is direction combined with speed (you probably did this in physics)
	
	move_and_slide()
func increase_score(label_counting):
	for label in score_labels:
		if label.whatitscounting == label_counting:
			label.val += 1 
			label.text = str(label.val)
		
