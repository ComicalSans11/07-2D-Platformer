extends KinematicBody2D

const GRAVITY = 15
const SPEED = 50
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = 1

func _ready():
	pass 
	
func _physics_process(delta):
	velocity.x = SPEED * direction
	if direction == 1:
		$Sprite.flip_h = false
	else:
		$Sprite.flip_h = true
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, FLOOR)
	if is_on_wall():
		direction = direction * -1
