extends RigidBody2D

@onready var timer = $Timer
var gravity = 1000.0


func _ready():
	timer.start()

func _process(delta):
	var force = Vector2(0, gravity) * delta
	apply_impulse(Vector2(0,Global.fallingspeed), force)
