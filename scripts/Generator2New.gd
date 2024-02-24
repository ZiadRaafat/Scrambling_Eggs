extends Marker2D

@onready var begg=preload("res://scenes/brokenegg.tscn")

var neweggg
func _ready():
	randomize()

func _process(delta):
	pass



func _on_timer_2_timeout():
	if Global.state==0:
		neweggg=begg.instantiate()
		get_owner().add_child(neweggg)
		neweggg.set_position(Vector2(randf_range(33,1124),-54))
<<<<<<< HEAD
=======
=======
		neweggg.set_position(Vector2(randf_range(33,1124),54))
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
		

