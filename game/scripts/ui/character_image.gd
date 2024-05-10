extends "res://game/scripts/ui/panel_visibility_switch.gd"

onready var tween = $Tween


func set_visible(value):
	rect_pivot_offset = rect_size / 2
	set_visible_panel(value)


func _gui_input(event):
	if event is InputEventMouseButton and event.pressed == false:
		tween.interpolate_property(self, "rect_scale",
		rect_scale, Vector2(0.925, 0.925), 0.075,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		
		tween.interpolate_property(self, "rect_scale",
		Vector2(0.925, 0.9225), Vector2(1, 1), 0.075,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 0.075)
		
		tween.start()
