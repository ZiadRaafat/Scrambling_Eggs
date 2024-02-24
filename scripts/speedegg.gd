extends Node2D

<<<<<<< HEAD
@onready var sound=get_tree().current_scene.get_node("SoundEffects/speedegg")

var collided=false
=======
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db

func _ready():
	pass

func _process(delta):
	pass


func _on_egg_body_body_entered(body):
<<<<<<< HEAD
	if !collided:
		print("SPEED")
		sound.play()
		get_node("EggBody/EggSprite").visible=false
		if Global.state==0:
			Global.speedflag=1
			Global.collectflag=1
			$Timer.start()
		collided=true
	
=======
	print("SPEED")
	get_node("EggBody/EggSprite").visible=false
	if Global.state==0:
		Global.globalpoints=Global.globalpoints+100
		Global.speedflag=1
	$Timer.start()
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
		
		









func _on_timer_timeout():
	print("SLOW")
	Global.speedflag=0
	queue_free()
