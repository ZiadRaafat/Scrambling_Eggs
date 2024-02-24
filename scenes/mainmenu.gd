extends Control

const SAVE_FILE_PATH="user://savedata"
var highscore
# Called when the node enters the scene tree for the first time.
func _ready():
	load_highscore()
	$Basket/Highscore/Highscore.set_text(str(highscore))
	$TitleMusic.play()
	$CanvasLayer/TitleText.text=("[center][wave amp=50 freq=6][rainbow freq=0.3 sat=10 val=20]Scrambling Eggs[/rainbow][/wave][/center]")
	$AnimationPlayer.play("mainmenuanim")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	meow()
	pass

func meow():
	if Input.is_action_pressed("meow"):
		$meow.play()
		
func _on_start_pressed():
	SceneTransition.change_scene_to_file("res://scenes/main.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$Click.play()


func _on_eggcyclopedia_pressed():
	$CanvasLayer/VBoxContainer/MenuButtonsAnim.play("disappear")
	$CanvasLayer/TitleText/TitleAnim.play("disappear")
	$CanvasLayer2/Eggcyclopedia/Showup.play("appear")
	#$CanvasLayer3/Dim.visible=true
	#$CanvasLayer/VBoxContainer/Start.visible=false
	#$CanvasLayer/VBoxContainer/Eggcyclopedia.visible=false
	#$CanvasLayer/VBoxContainer/Quit.visible=false
	#$CanvasLayer/TitleText.visible=false
	$Click.play()
func _on_quit_pressed():
	get_tree().quit()
	$Click.play()
	
func load_highscore():
	var save_data=FileAccess.open(SAVE_FILE_PATH, FileAccess.READ)
	if save_data!=null:
		save_data.open(SAVE_FILE_PATH,FileAccess.READ)
		highscore=save_data.get_var()
		save_data.close()
	else:
		highscore=0

