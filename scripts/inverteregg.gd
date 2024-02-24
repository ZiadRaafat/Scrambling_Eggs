extends Node2D

@onready var sound=get_tree().current_scene.get_node("SoundEffects/inverteregg")
func _ready():
	pass 

var collided=false

func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	if !collided:
		get_node("EggBody/EggSprite").visible=false
		get_node("EggBody").position=Vector2(1428,308)
		if Global.state==0:
			Global.inverterflag=1
			print("Inverted!")
			Global.collectflag=1
			sound.play()
			$Timer.start()
		collided=true

func _on_timer_timeout():
	print("Not Inverted")
	Global.inverterflag=0
	queue_free()  
