extends CharacterBody2D


@export var speed = 30.0


func _ready():
	pass

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
	
			
			
