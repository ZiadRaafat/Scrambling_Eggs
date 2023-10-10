extends Node2D


func _ready():
	pass

func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	print("SPEED")
	get_node("EggBody/EggSprite").visible=false
	if Global.state==0:
		Global.globalpoints=Global.globalpoints+100
		Global.speedflag=1
	$Timer.start()
		
		









func _on_timer_timeout():
	print("SLOW")
	Global.speedflag=0
	queue_free()
