extends Control

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("pause"):
		$MarginContainer/CenterContainer/VBoxContainer/SaveButton.grab_focus()
		get_tree().paused = not get_tree().paused
		visible = not visible

func _on_SaveButton_pressed():
	get_node("/root/Global").save_data()


func _on_LoadButton_pressed():
	get_node("/root/Global").load_data()


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_ResumeButton_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible
