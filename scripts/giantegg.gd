extends Node2D

@onready var anim=get_tree().current_scene.get_node("Player/Body/CollectAnim1")

@onready var sound=get_tree().current_scene.get_node("SoundEffects/giantegg")

var collided=false

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
			Global.giantflag=1
			print("BIG!")
			anim.play("enlarge")
			$Timer.start()
			Global.scalesize=Vector2(1.5,1)
		collided=true


func _on_timer_timeout():
	print("Smol")
	Global.giantflag=0
	anim.play("reduce")
	Global.scalesize=Vector2(1,1)
	queue_free()  
