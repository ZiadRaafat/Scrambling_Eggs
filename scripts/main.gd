extends Node

@onready var egg=get_node("AllEggs")

@onready var text=get_node("AllEggs/Eggs/Control/Points")
@onready var text2=get_node("AllEggs/Eggs/Control/Lives")
@onready var text3=get_node("AllEggs/Eggs/Control/Status")


func _ready():
	pass 


func _process(delta):
	text.set_text("Points: "+str(Global.globalpoints))
	text2.set_text("Lives: "+str(Global.lives))
	setStatus()
	


func _on_floorcollision_body_entered(body):
	if body.is_in_group("normal_egg"):
		Global.lives=Global.lives-1
		print("Bye")
		body.queue_free()
	elif body.is_in_group("broken_egg"):
		body.queue_free()
	elif body.is_in_group("golden_egg"):
		body.queue_free()
		print("GOLDEN EGGG")
	elif body.is_in_group("speed_egg"):
		body.queue_free()
		print("Speedy")
		
func setStatus():
	if Global.state==0:
		if Global.speedflag==1:
			text3.set_text("Status: Speed Boost")
		elif Global.speedflag==0:
			text3.set_text("Status: None")
	else:
		text3.set_text("Status: Game Over")
		
		
