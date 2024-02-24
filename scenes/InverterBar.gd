extends TextureProgressBar



func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inverterflag==1:
		self.show()
		$InverterAnim.play("countdown2")
	if Global.inverterflag==0:
		self.hide()
		

