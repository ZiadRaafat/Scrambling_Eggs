extends Node2D

@onready var sound=get_tree().current_scene.get_node("SoundEffects/slowegg")
func _ready():
	pass 

var collided=false

func _process(delta):
	pass


func _on_timer_timeout():
	print("NORMAL")
	Global.speedflag=0
	queue_free() 


func _on_egg_body_body_entered(body):
	if !collided:
		print("SLOW")
		get_node("EggBody/EggSprite").visible=false
		get_node("EggBody").position=Vector2(1428,308)
		if Global.state==0:
			sound.play()
			Global.speedflag=2
			Global.collectflag=1
			$Timer.start()
		collided=true 
