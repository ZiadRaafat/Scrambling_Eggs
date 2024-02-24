extends Control

@onready var timeleft=get_tree().current_scene.get_node("ReturnMMTimer")


# Called when the node enters the scene tree for the first time.
func _ready():
	$"board/New Highscore".visible=false
	$"board/New Highscore".text=("[center][wave amp=50 freq=6][rainbow freq=0.3 sat=10 val=20]New Highscore![/rainbow][/wave][/center]")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var tl=str(int(ceil(timeleft.time_left)))
	$board/Score.set_text("Score: " + str(Global.globalpoints))
	$board/Highscore.set_text("Highscore: " + str(Global.globalhighscore))
	if Global.globalpoints==Global.globalhighscore:
		$"board/New Highscore".visible=true
	$board/Returning.set_text("Returning to main menu in: "+tl)
		

func _on_replay_pressed():
	Global.reloadcounter=1
	$Click.play()


func _on_exit_pressed():
	$Click.play()
	get_tree().quit()
	
