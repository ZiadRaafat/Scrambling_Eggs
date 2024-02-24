extends GPUParticles2D


# Called when the node enters the scene tree for the first time.
func _ready():
	emitting=false
	local_coords=false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inverterflag==1:
		emitting=true
	elif Global.inverterflag==0:
		emitting=false
