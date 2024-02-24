extends Node


var globalpoints=0
var lives=5
var state=0
var speedflag=0
<<<<<<< HEAD
var inverterflag=0
var giantflag=0
var rainbowflag=0
var blindflag=0
var fallingspeed=0

var streakcounter=0
var streakmultiplier=0

var shakeflag=0

var collectflag=0
var sizeflag=0
var scalesize=Vector2(1,1)
var goldenflag=0
	
var pauseflag=0

var globalhighscore=0

var reloadcounter=0

var pagenumber=1

func reset():
	globalpoints=0
	lives=5
	state=0
	speedflag=0
	inverterflag=0
	giantflag=0
	rainbowflag=0
	blindflag=0
	fallingspeed=0

	streakcounter=0
	streakmultiplier=0

	shakeflag=0

	collectflag=0
	sizeflag=0
	scalesize=Vector2(1,1)
	goldenflag=0
		
=======
var speedcheck=0


	
=======

>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
func _ready():
	pass



func _process(delta):
	if lives<=0:
		state=1
		lives=0
<<<<<<< HEAD
	if globalpoints<=0:
		globalpoints=0
	
=======
	
=======
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
