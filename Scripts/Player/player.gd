extends CharacterBody2D

var vel = 250
var grav = 10

func _process(_delta):
	$ProgressBar.max_value = $Timer.wait_time
	$ProgressBar.value = $Timer.time_left

func _physics_process(_delta):
	velocity.y += grav
	move()
	move_and_slide()

func move():
	if Global.is_awake == true:
		if Input.is_action_pressed("ui_left"):
			velocity.x = -vel
			$AnimatedSprite2D.play("walk")
			$AnimatedSprite2D.flip_h = true
		elif Input.is_action_pressed("ui_right"):
			velocity.x = vel
			$AnimatedSprite2D.play("walk")
			$AnimatedSprite2D.flip_h = false
		else:
			velocity.x = 0
			$CPUParticles2D.emitting = false
			$AnimatedSprite2D.play("idle")
			
		if is_on_floor():
			if Input.is_action_just_pressed("ui_up"):
				$AudioStreamPlayer2D.playing = true
				velocity.y -= 350
			if velocity.x:
				$CPUParticles2D.emitting = true
			else:
				$CPUParticles2D.emitting = false
			
	else:
		velocity.x = 0
		$AnimatedSprite2D.play("sleep")
		$CPUParticles2D.emitting = false
		$CPUParticles2D2.emitting = true
		$AnimatedSprite2D.position.y = +1




func _on_timer_timeout():
	Global.is_awake = false
