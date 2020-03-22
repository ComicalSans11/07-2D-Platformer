extends Control

func _ready():
	pass

func update_score(s):
	$Score.text = 'Score: ' + str(s)

func update_health(h):
	$Health.text = 'Health: ' + str(h)
