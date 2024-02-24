extends TextureProgressBar



func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.speedflag==2:
		self.show()
		$SlowAnim.play("countdown2")
	if Global.speedflag==0 or Global.speedflag==1:
		self.hide()
		

