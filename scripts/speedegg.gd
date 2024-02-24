extends Node2D

@onready var sound=get_tree().current_scene.get_node("SoundEffects/speedegg")

var collided=false

func _ready():
	pass

func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	if !collided:
		print("SPEED")
		sound.play()
		get_node("EggBody/EggSprite").visible=false
		if Global.state==0:
			Global.speedflag=1
			Global.collectflag=1
			$Timer.start()
		collided=true
	
		
		









func _on_timer_timeout():
	print("SLOW")
	Global.speedflag=0
	queue_free()
