extends Node2D

@onready var sound=get_tree().current_scene.get_node("SoundEffects/crackegg")
@onready var sound2=get_tree().current_scene.get_node("SoundEffects/streaksizzle")
func _ready():
	pass 



func _process(delta):
	pass


func _on_egg_body_body_entered(body):
	queue_free()
	if Global.state==0:
		if Global.rainbowflag==0:
			print("Life")
			Global.lives=Global.lives-1
			Global.shakeflag=1
			if Global.streakcounter>=10:
				sound2.play()
			Global.streakcounter=0
			print(Global.streakcounter)
			Global.collectflag=1
			sound.play()
