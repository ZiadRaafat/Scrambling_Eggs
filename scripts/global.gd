extends Node


var globalpoints=0
<<<<<<< Updated upstream
var lives=3
=======
var lives=5
>>>>>>> Stashed changes
var state=0

func _ready():
	pass



func _process(delta):
	if lives<=0:
		state=1
		lives=0
