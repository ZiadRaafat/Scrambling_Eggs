extends Node

@onready var egg=get_node("Eggs/Egg")
@onready var text=get_node("Eggs/Control/Points")
@onready var text2=get_node("Eggs/Control/Lives")


func _ready():
	pass 


func _process(delta):
	text.set_text("Points: "+str(Global.globalpoints))
	text2.set_text("Lives: "+str(Global.lives))
	pass


#Fix this for queue_free() to allow egg to despawn once falling down if basket didnt catch it
func _on_floorcollision_body_entered(body):
		Global.lives=Global.lives-1
		print("Bye")
