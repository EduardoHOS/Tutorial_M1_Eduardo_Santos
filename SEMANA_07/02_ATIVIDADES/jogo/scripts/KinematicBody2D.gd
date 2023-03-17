extends KinematicBody2D

var motion = Vector2.ZERO;
var speed = 300;


func _process(delta):
	
	#movimentação 
	if is_on_floor():
		print("ta rodando")
		
		if Input. is_action_pressed("ui_right"):
			$Sprite.play("andandoR")
		if motion.x == 0:
			$Sprite.play("parado")
		if Input. is_action_pressed("ui_up"):
			motion.y = -400
		elif Input.is_action_pressed("ui_left"):
			$Sprite.play("andandoL")
	else:
		motion.y += 10
		print ("to voando alto")
		
		
	
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed;
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0;
		
	move_and_slide(motion,Vector2.UP)
		
	
