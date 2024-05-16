extends Control


func set_safe_area():
	var safe_area = OS.get_window_safe_area()
	var ratio = get_viewport_rect().size.x / get_viewport().size.x
	rect_position = ratio * safe_area.position
	rect_size = ratio * safe_area.size
