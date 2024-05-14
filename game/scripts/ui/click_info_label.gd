extends Label

var start_position

onready var tween = $Tween


func set_params(position, value):
	text = "+%d" % value
	position -= rect_pivot_offset
	tween.interpolate_property(self, "rect_position", position, position + Vector2.UP * 80, 0.4, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_property(self, "modulate", Color.white, Color.transparent, 0.4, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_property(self, "rect_scale", Vector2.ONE * 1.5, Vector2.ONE, 0.4, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()


func _on_tween_all_completed():
	queue_free()
