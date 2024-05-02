extends Control

onready var animation_player = $AnimationPlayer


func set_visible(value):
	if value == visible:
		return
	animation_player.play("open" if value else "close")


func _on_set_visible(value):
	visible = value
