extends Node2D

<<<<<<< HEAD
@onready var sound=get_tree().current_scene.get_node("SoundEffects/goldenegg")
=======

>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
func _ready():
	pass 



func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
<<<<<<< HEAD
		sound.play()
		Global.goldenflag=1
		Global.collectflag=1
		print("Golden")
		if Global.lives<5:
			Global.lives=Global.lives+1
			Global.globalpoints=Global.globalpoints+300
		elif Global.lives>=5:
			Global.globalpoints=Global.globalpoints+500
		
=======
		print("Golden")
		if Global.lives<5:
			Global.lives=Global.lives+1
		Global.globalpoints=Global.globalpoints+200
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
