extends Control

@onready var anim=get_tree().current_scene.get_node("CanvasLayer2/Eggcyclopedia/Showup")
@onready var dim=get_tree().current_scene.get_node("CanvasLayer3/Dim")

@onready var start=get_tree().current_scene.get_node("CanvasLayer/VBoxContainer/Start")
@onready var quit=get_tree().current_scene.get_node("CanvasLayer/VBoxContainer/Quit")
@onready var title=get_tree().current_scene.get_node("CanvasLayer/TitleText")
@onready var eggc=get_tree().current_scene.get_node("CanvasLayer/VBoxContainer/Eggcyclopedia")

@onready var menuAnim=get_tree().current_scene.get_node("CanvasLayer/VBoxContainer/MenuButtonsAnim")
@onready var titleAnim=get_tree().current_scene.get_node("CanvasLayer/TitleText/TitleAnim")


func _ready():
	Global.pagenumber=1
	$Page1.visible=true
	$Page2.visible=false
	$Page3.visible=false
	$Page4.visible=false
	$Page5.visible=false
	



func _process(delta):
	pass
	
func _input(event):
	if Global.pagenumber==1:
		if Input.is_action_pressed("right"):
			Global.pagenumber=2
			$Page1.visible=false
			$Page2.visible=true
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==2:
		if Input.is_action_pressed("right"):
			Global.pagenumber=3
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=true
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
		elif Input.is_action_pressed("left"):
			Global.pagenumber=1
			$Page1.visible=true
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==3:
		if Input.is_action_pressed("right"):
			Global.pagenumber=4
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=true
			$Page5.visible=false
			$flip.play()
		elif Input.is_action_pressed("left"):
			Global.pagenumber=2
			$Page1.visible=false
			$Page2.visible=true
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==4:
		if Input.is_action_pressed("right"):
			Global.pagenumber=5
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=true
			$flip.play()
		elif Input.is_action_pressed("left"):
			Global.pagenumber=3
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=true
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==5:
		if Input.is_action_pressed("left"):
			Global.pagenumber=4
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=true
			$Page5.visible=false
			$flip.play()
		


func _on_right_pressed():
	if Global.pagenumber==1:
			Global.pagenumber=2
			$Page1.visible=false
			$Page2.visible=true
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==2:
			Global.pagenumber=3
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=true
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==3:
			Global.pagenumber=4
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=true
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==4:
			Global.pagenumber=5
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=true
			$flip.play()


func _on_left_pressed():
	if Global.pagenumber==2:
			Global.pagenumber=1
			$Page1.visible=true
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==3:
			Global.pagenumber=2
			$Page1.visible=false
			$Page2.visible=true
			$Page3.visible=false
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==4:
			Global.pagenumber=3
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=true
			$Page4.visible=false
			$Page5.visible=false
			$flip.play()
	elif Global.pagenumber==5:
			Global.pagenumber=4
			$Page1.visible=false
			$Page2.visible=false
			$Page3.visible=false
			$Page4.visible=true
			$Page5.visible=false
			$flip.play()
		


func _on_return_pressed():
	menuAnim.play("appear")
	anim.play("disappear")
	titleAnim.play_backwards("disappear")
	#dim.visible=false
	#start.visible=true
	#eggc.visible=true
	#quit.visible=true
	#title.visible=true
	$Click.play()
