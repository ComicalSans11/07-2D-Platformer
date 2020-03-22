extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0, -1)
var speed = 200
var gravity = 15
var jump_force = -420
var deaths

func _on_EnemyDetector_body_entered(body: PhysicsBody2D) -> void:
	die()

func _physics_process(delta):
	motion.y += gravity
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$Sprite.flip_h = true
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = jump_force
	motion = move_and_slide(motion, UP)


func die() -> void:
	queue_free()
	
