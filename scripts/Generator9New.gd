extends Marker2D



@onready var egg=preload("res://scenes/tinyegg.tscn")
var newegg
func _ready():
	randomize() 


func _process(delta):
	pass



func _on_timer_timeout():
	if Global.state==0:
		newegg=egg.instantiate()
		get_owner().add_child(newegg)
		newegg.set_position(Vector2(randf_range(33+245,909),-54))
