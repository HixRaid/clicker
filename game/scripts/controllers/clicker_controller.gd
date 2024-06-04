extends Node

onready var score_value_label = $"../Panel/Wrapper/TopPanel/LabelsControl/ScoreLabel"


func add_score():
	Clicker.press()
	
	score_value_label.text = str(Clicker.count)
	
	return Clicker.one_click_count
