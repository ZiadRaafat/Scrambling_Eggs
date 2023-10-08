extends Node2D



func _ready():
	set_process(true) 


func _process(delta):
	pass





func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
		print("Hi")
<<<<<<< Updated upstream
		Global.globalpoints=Global.globalpoints+1
=======
		Global.globalpoints=Global.globalpoints+100
>>>>>>> Stashed changes

