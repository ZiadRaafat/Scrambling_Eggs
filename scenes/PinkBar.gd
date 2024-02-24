extends TextureProgressBar



func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.blindflag==1:
		self.show()
		$PinkAnim.play("countdown3")
	if Global.blindflag==0:
		self.hide()
		
