extends Camera2D

@export var randomStrength: float=30.0
@export var shakeFade: float=5.0

var rng=RandomNumberGenerator.new()

var shake_strength: float=0.0

func apply_shake():
	shake_strength=randomStrength
	
	
func randomOffset() -> Vector2:
	return Vector2(rng.randf_range(-shake_strength,shake_strength),rng.randf_range(-shake_strength,shake_strength))

func _process(delta):
	if Global.shakeflag==1:
		apply_shake()
		Global.shakeflag=0
		
	if shake_strength>0:
		shake_strength=lerpf(shake_strength,0,shakeFade*delta)
		offset=randomOffset()
