extends Node2D

export var score = 0
export var health = 3
var level = 0

var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)

func save_data():
	config.set_value("Save","score",score)
	config.set_value("Save","health",health)
	config.save(save_path)
	
func load_data():
	score = config.get_value("Save","score")
	health = config.get_value("Save","health")
