extends Node

@onready var egg=get_node("AllEggs")
<<<<<<< HEAD
@onready var player=get_node("Player")
@onready var playerbody=get_node("Player/Body")

@onready var text=get_node("Player/Body/Points")
@onready var text2=get_node("Player/Body/Heart/Lives")
@onready var text4=get_node("Control/Highscore/Highscore")
@onready var text5=get_node("Player/Body/Fire/Streak")
@onready var fire=get_node("Player/Body/Fire/Streak/Fire")

@onready var color1=load("res://particles/flameparticlecolor1.tres")
@onready var color2=load("res://particles/flameparticlecolor3.tres")
@onready var color3=load("res://particles/flameparticlecolor4.tres")
@onready var color4=load("res://particles/flameparticlecolor5.tres")
@onready var color5=load("res://particles/flameparticlecolor6.tres")
@onready var color6=load("res://particles/flameparticlecolor7.tres")

const SAVE_FILE_PATH="user://savedata"
var highscore=0

var streak15soundplayed=false
var streak2soundplayed=false
var streak25soundplayed=false
var streak3soundplayed=false
var streak35soundplayed=false
var streak4soundplayed=false
var gameoversoundplayed=false
var resultsflag=false
var hintonce=false

var mmflag=false

func _ready():
	resultsflag=false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	Global.reloadcounter=0
	$CanvasLayerDark/darkscreen.visible=false
	Global.reset()
	$BackgroundMusic.play()
	load_highscore()
	get_node("Control/Highscore/Highscore").set_text("Highscore: "+str(highscore))
	player.position.y=505
	print(highscore)

func pause_game():
	if Global.state==0:
		if Input.is_action_pressed("Pause"):
			get_node("CanvasLayer/PauseMenu").show()
			get_tree().paused=true
			Global.pauseflag=1
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func _process(delta):
	Global.globalhighscore=highscore
	if Global.state==1:
		if !resultsflag:
			$CanvasLayerResults/Results/DropDown.play("dropdown")
			resultsflag=true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$CanvasLayerDark/darkscreen.visible=true
		$BackgroundMusic.stop()
		if !gameoversoundplayed:
			$SoundEffects/gameover.play()
			gameoversoundplayed=true
		if Global.reloadcounter==1:
			get_tree().reload_current_scene()
		if !mmflag:
			$ReturnMMTimer.start()
			print ($ReturnMMTimer.time_left)
			mmflag=true
	pause_game()
	
		
	
	if Global.streakcounter==0:
		streak15soundplayed=false
		fire.process_material.set("color_ramp",color1)
	if Global.streakcounter==10:
		streak2soundplayed=false
		streak25soundplayed=false
		streak3soundplayed=false
		streak35soundplayed=false
		streak4soundplayed=false
		if !streak15soundplayed:
			streak15soundplayed=true
			get_node("SoundEffects/streak15").play()
	if Global.streakcounter==11:
		streak15soundplayed=false
		
	if Global.streakcounter==20:
		streak15soundplayed=false
		if !streak2soundplayed:
			streak2soundplayed=true
			get_node("SoundEffects/streak2").play()
			fire.process_material.set("color_ramp",color2)
			
	if Global.streakcounter==30:
		streak2soundplayed=false
		if !streak25soundplayed:
			streak25soundplayed=true
			get_node("SoundEffects/streak25").play()
			fire.process_material.set("color_ramp",color3)
			
	if Global.streakcounter==40:
		streak25soundplayed=false
		if !streak3soundplayed:
			streak3soundplayed=true
			get_node("SoundEffects/streak3").play()
			fire.process_material.set("color_ramp",color4)
			
	if Global.streakcounter==50:
		streak3soundplayed=false
		if !streak35soundplayed:
			streak35soundplayed=true
			get_node("SoundEffects/streak35").play()
			fire.process_material.set("color_ramp",color5)
			
	if Global.streakcounter==60:
		streak35soundplayed=false
		if !streak4soundplayed:
			streak4soundplayed=true
			get_node("SoundEffects/streak4").play()
			fire.process_material.set("color_ramp",color6)
			
			
			
	if Global.collectflag==1:
		if Global.scalesize==Vector2(1,1):
			$Player/Body/CollectAnim1.play("collect")
		else:
			$Player/Body/CollectAnim1.play("collect2")
		Global.collectflag=0
	if Global.state==1:
		Global.blindflag=0
		Global.collectflag=0
	if Global.rainbowflag==1:
		get_node("Player/Body/Sprite").modulate=Color(3,3,3)
	if Global.rainbowflag==0:
		get_node("Player/Body/Sprite").modulate=Color(1.5,1.5,1.5)
		
	if Global.streakcounter>=10&&Global.streakcounter<20:
		Global.streakmultiplier=50
		text5.set_text(":[shake rate=20.0 level=10 connected=1]x1.5[/shake]")
		fire.position=Vector2(56.296,22.896)
		fire.scale=Vector2(0.7,0.278)
		fire.emitting=true
		
		
	if Global.streakcounter>=20&&Global.streakcounter<30:
		Global.streakmultiplier=100
		text5.set_text(":[shake rate=25.0 level=15 connected=1]x2[/shake]")
		fire.position=Vector2(31.044,22.896)
		fire.scale=Vector2(0.278,0.278)
		
		
	if Global.streakcounter>=30&&Global.streakcounter<40:
		Global.streakmultiplier=150
		text5.set_text(":[shake rate=30.0 level=20 connected=1]x2.5[/shake]")
		fire.position=Vector2(56.296,22.896)
		fire.scale=Vector2(0.7,0.278)
		fire.emitting=true
		
	if Global.streakcounter>=40&&Global.streakcounter<50:
		Global.streakmultiplier=200
		text5.set_text(":[shake rate=30.0 level=25 connected=1]x3[/shake]")
		fire.position=Vector2(31.044,22.896)
		fire.scale=Vector2(0.278,0.278)
		
	if Global.streakcounter>=50&&Global.streakcounter<60:
		Global.streakmultiplier=250
		text5.set_text(":[shake rate=30.0 level=30 connected=1]x3.5[/shake]")
		fire.position=Vector2(56.296,22.896)
		fire.scale=Vector2(0.7,0.278)
		fire.emitting=true
		
	if Global.streakcounter>=60:
		Global.streakmultiplier=300
		text5.set_text(":[shake rate=30.0 level=35 connected=1]x4[/shake]")
		fire.position=Vector2(31.044,22.896)
		fire.scale=Vector2(0.278,0.278)
		
	if Global.streakcounter==0:
		Global.streakmultiplier=0
		text5.set_text(":x1")
		fire.emitting=false
		
	if Global.lives==0:
		$WorldEnvironment.environment.glow_blend_mode=Environment.GLOW_BLEND_MODE_SOFTLIGHT
	if Global.giantflag!=2:
		if playerbody.position.x>540:
			playerbody.position.x=520
		if playerbody.position.x<-500:
			playerbody.position.x=-480
		if playerbody.position.y>0:
			playerbody.position.y=0
			
	text.set_text(str(Global.globalpoints))
	text2.set_text(":"+str(Global.lives))
	text4.set_text("Highscore: "+str(highscore))
	if Global.blindflag==1:
		$WorldEnvironment.environment.glow_blend_mode=Environment.GLOW_BLEND_MODE_REPLACE
	if Global.giantflag==0:
		if Global.state==0:
			player.scale=Vector2(1,1)
	if Global.blindflag==0:
		$WorldEnvironment.environment.glow_blend_mode=Environment.GLOW_BLEND_MODE_SOFTLIGHT
	if Global.globalpoints>highscore:
		highscore=Global.globalpoints
		save_highscore()

func _on_floorcollision_body_entered(body):
	if body.is_in_group("normal_egg"):
		if Global.rainbowflag==0:
			Global.lives=Global.lives-1
			if Global.state==0:
				get_node("SoundEffects/crackegg").play()
				Global.shakeflag=1
				if Global.streakcounter>=10:
					get_node("SoundEffects/streaksizzle").play()
			Global.streakcounter=0
			print(Global.streakcounter)
			print("Bye")
			body.queue_free()
		elif Global.rainbowflag==1:
			body.queue_free() 
=======

@onready var text=get_node("AllEggs/Eggs/Control/Points")
@onready var text2=get_node("AllEggs/Eggs/Control/Lives")
@onready var text3=get_node("AllEggs/Eggs/Control/Status")
=======


func _ready():
	pass 


func _process(delta):
	text.set_text("Points: "+str(Global.globalpoints))
	text2.set_text("Lives: "+str(Global.lives))
	setStatus()
	


=======
	pass


#Fix this for queue_free() to allow egg to despawn once falling down if basket didnt catch it
func _on_floorcollision_body_entered(body):
	if body.is_in_group("normal_egg"):
		Global.lives=Global.lives-1
		print("Bye")
		body.queue_free()
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
	elif body.is_in_group("broken_egg"):
		body.queue_free()
	elif body.is_in_group("golden_egg"):
		body.queue_free()
		print("GOLDEN EGGG")
	elif body.is_in_group("speed_egg"):
		body.queue_free()
		print("Speedy")
<<<<<<< HEAD
	elif body.is_in_group("slow_egg"):
		body.queue_free()
		print("Slowy")
	elif body.is_in_group("inverter_egg"):
		body.queue_free()
		print("Invert")
	elif body.is_in_group("giant_egg"):
		body.queue_free()
		print("BIGG")
	elif body.is_in_group("rainbow_egg"):
		body.queue_free()
		print("rain")
	elif body.is_in_group("tiny_egg"):
		body.queue_free()
		print("smolll")
		
		


func _on_fallspeed_timer_timeout():
	if Global.state==0:
		Global.fallingspeed+=2
		print("Speeding up!")
	
func save_highscore():
	var save_data=FileAccess.open(SAVE_FILE_PATH, FileAccess.WRITE)
	save_data.store_var(highscore)
	save_data.close()
	
func load_highscore():
	var save_data=FileAccess.open(SAVE_FILE_PATH, FileAccess.READ)
	if save_data!=null:
		save_data.open(SAVE_FILE_PATH,FileAccess.READ)
		highscore=save_data.get_var()
		save_data.close()



func _on_return_mm_timer_timeout():
	SceneTransition.change_scene_to_file("res://scenes/mainmenu.tscn")
	
	
func _input(event):
	if !hintonce:
		if Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			$Container/Hint.play("disappear")
			hintonce=true
	
=======
		
func setStatus():
	if Global.state==0:
		if Global.speedflag==1:
			text3.set_text("Status: Speed Boost")
		elif Global.speedflag==0:
			text3.set_text("Status: None")
	else:
		text3.set_text("Status: Game Over")
		
		
=======
>>>>>>> 2402988a50ffe5d33610450771ca5acf489479db
