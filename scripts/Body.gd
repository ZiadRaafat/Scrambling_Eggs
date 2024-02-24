extends CharacterBody2D


@export var speed = 30.0


func _ready():
	pass

<<<<<<< HEAD
var speedmult
func _process(delta):
	handleMovement(delta)
		
		



func handleMovement(delta):
	if Global.state==0:
		if Global.speedflag==0:
			speedmult=20
		if Global.speedflag==1:
			speedmult=40
		if Global.speedflag==2:
			speedmult=10
		if Global.inverterflag==1:
			speedmult=speedmult*-1
		if Input.is_action_pressed("right"):
			position.x+=speedmult*speed*delta
		if Input.is_action_pressed("left"):
			position.x-=speedmult*speed*delta
		move_and_slide()
	
			
			
=======

func _process(delta):
	if Global.state==0:

		if Global.speedflag==0:
			if Input.is_action_pressed("right"):
				position.x+=20*speed*delta
				move_and_slide()
			if Input.is_action_pressed("left"):
				position.x-=20*speed*delta
				move_and_slide()
		elif Global.speedflag==1:
			if Input.is_action_pressed("right"):
				position.x+=40*speed*delta
				move_and_slide()
			if Input.is_action_pressed("left"):
				position.x-=40*speed*delta
				move_and_slide()
			
=======
		if Input.is_action_pressed("right"):
			position.x+=20*speed*delta
			move_and_slide()
		if Input.is_action_pressed("left"):
			position.x-=20*speed*delta
			move_and_slide()
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
