extends GPUParticles2D


# Called when the node enters the scene tree for the first time.
func _ready():
	local_coords=false
	emitting=false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.goldenflag==1:
		$Timer.start()
		emitting=true
		Global.goldenflag=0


func _on_timer_timeout():
	emitting=false
