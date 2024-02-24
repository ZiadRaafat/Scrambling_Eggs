extends Node2D



@onready var sound=get_tree().current_scene.get_node("SoundEffects/egg")
@onready var sound2=get_tree().current_scene.get_node("SoundEffects/streak15")

func _ready():
	set_process(true) 


func _process(delta):
	pass




func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
		print("Hi")
		sound.play()
		Global.streakcounter+=1
		print(Global.streakcounter)
		Global.globalpoints=Global.globalpoints+100+Global.streakmultiplier
		Global.collectflag=1
		print(Global.streakmultiplier)
		
		#if Global.streakmultiplier==50:
			#sound2.play()
			
		


