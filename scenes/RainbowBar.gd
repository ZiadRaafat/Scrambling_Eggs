extends TextureProgressBar



func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.rainbowflag==1:
		self.show()
		$RainbowAnim.play("countdown")
	if Global.rainbowflag==0:
		self.hide()
		

