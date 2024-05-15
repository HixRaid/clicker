extends "res://game/scripts/interfaces/interface.gd"

var count = 0
var one_click_count = 1

onready var score_value_label = $Panel/Wrapper/TopPanel/LabelsControl/ScoreValueLabel


func add_score():
	count += one_click_count
	
	score_value_label.text = str(count)
	
	return one_click_count
