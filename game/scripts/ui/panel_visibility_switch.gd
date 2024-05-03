extends Control

onready var animation_player = $AnimationPlayer


func set_visible_panel(value):
	animation_player.play("open" if value else "close")
