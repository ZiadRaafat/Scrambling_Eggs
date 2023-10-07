extends Node2D



func _ready():
	set_process(true)


func _process(delta):
	pass


func _on_rigid_body_2d_body_entered(body):
	queue_free()
	if Global.state==0:
		print("Life")
		Global.lives=Global.lives-1.
