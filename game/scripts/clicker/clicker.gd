extends Node

var count = 0
var one_click_count = 1

onready var data = $Data

func press():
	count += one_click_count
