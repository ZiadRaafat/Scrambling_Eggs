extends Node2D


@onready var sound=get_tree().current_scene.get_node("SoundEffects/rainbowegg")

var collided

func _ready():
	pass 


func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	if !collided:
		sound.play()
		get_node("EggBody/EggSprite").visible=false
		get_node("EggBody").position=Vector2(1428,308)
		if Global.state==0:
			Global.rainbowflag=1
			Global.collectflag=1
			print("RAINBOW")
			$Timer.start()
		collided=true 


	


func _on_timer_timeout():
	print("bow")
	Global.rainbowflag=0
	queue_free()  
