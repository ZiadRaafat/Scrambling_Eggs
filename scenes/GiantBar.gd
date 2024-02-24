extends TextureProgressBar



func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.giantflag==1:
		self.show()
		$GiantAnim.play("countdown")
	if Global.giantflag==0:
		self.hide()
		

