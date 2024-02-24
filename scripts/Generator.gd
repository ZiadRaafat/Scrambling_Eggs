extends Marker2D

@onready var egg=preload("res://scenes/egg.tscn")

var newegg
func _ready():
	randomize()

func _process(delta):
	pass


func _on_timer_timeout():
	if Global.state==0:
		newegg=egg.instantiate()
		get_owner().add_child(newegg)
		newegg.set_position(Vector2(randf_range(33,1124),-54))
<<<<<<< HEAD
=======
=======
		newegg.set_position(Vector2(randf_range(33,1124),54))
		
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db







func _on_floorcollision_body_entered(body):
	pass
