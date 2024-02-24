extends Control


@onready var paused=get_tree().current_scene.get_node("CanvasLayer/PauseMenu")
@onready var ca=$ca
@onready var cb=$cb

var threeflag=false
var twoflag=false
var oneflag=false

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Countdown.text=str(int(ceil($Timer.time_left)))
	playSound()


func _on_resume_pressed():
	$Paused.hide()
	$VBoxContainer/Resume2.hide()
	$Countdown.show()
	$Timer.start()
	$VBoxContainer/Resume.visible=false
	$Click.play()

func _on_timer_timeout():
	get_tree().paused=false
	$Countdown.hide()
	$Paused.show()
	$VBoxContainer/Resume2.show()
	$VBoxContainer/Resume.visible=true
	paused.hide()
	Global.pauseflag=0
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	threeflag=false
	twoflag=false
	oneflag=false
	
	
func playSound():
	if !threeflag:
		if $Countdown.text==str(3):
			ca.play()
			threeflag=true
	elif !twoflag:
		if $Countdown.text==str(2):
			ca.play()
			twoflag=true
	elif !oneflag:
		if $Countdown.text==str(1):
			cb.play()
			oneflag=true
			


func _on_resume_2_pressed():
	$Click.play()
	get_tree().quit()
