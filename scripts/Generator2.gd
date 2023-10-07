extends Marker2D
@onready var begg=preload("res://scenes/brokenegg.tscn")

var newegg
func _ready():
	randomize()

func _process(delta):
	pass




func _on_timer_2_timeout():
	if Global.state==0:
		newegg=begg.instantiate()
		get_owner().add_child(newegg)
		newegg.set_position(Vector2(randf_range(33,1124),54))
		

