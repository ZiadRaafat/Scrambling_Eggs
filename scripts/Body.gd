extends CharacterBody2D


@export var speed = 30.0


func _ready():
	pass


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
