extends Node2D


func _ready():
	pass 



func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
		print("Life")
		Global.lives=Global.lives-1
