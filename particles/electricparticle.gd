extends GPUParticles2D


# Called when the node enters the scene tree for the first time.
func _ready():
	emitting=false
	local_coords=false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.speedflag==1:
		emitting=true
	else:
		emitting=false
