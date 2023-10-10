extends Node


var globalpoints=0
var lives=5
var state=0
var speedflag=0
var speedcheck=0


	
func _ready():
	pass



func _process(delta):
	if lives<=0:
		state=1
		lives=0
	
