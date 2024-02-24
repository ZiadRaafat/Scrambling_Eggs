extends Node2D



<<<<<<< HEAD
@onready var sound=get_tree().current_scene.get_node("SoundEffects/egg")
@onready var sound2=get_tree().current_scene.get_node("SoundEffects/streak15")

=======
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
func _ready():
	set_process(true) 


func _process(delta):
	pass




<<<<<<< HEAD
=======

>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
		print("Hi")
<<<<<<< HEAD
		sound.play()
		Global.streakcounter+=1
		print(Global.streakcounter)
		Global.globalpoints=Global.globalpoints+100+Global.streakmultiplier
		Global.collectflag=1
		print(Global.streakmultiplier)
		
		#if Global.streakmultiplier==50:
			#sound2.play()
			
		

=======
		Global.globalpoints=Global.globalpoints+100
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db

