extends "res://game/scripts/ui/panel_visibility_switch.gd"


func set_visible(value):
	rect_pivot_offset = rect_size / 2
	set_visible_panel(value)
