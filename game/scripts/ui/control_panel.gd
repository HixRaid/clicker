extends Control

var is_active = true

onready var animation_player = $AnimationPlayer
onready var top_panel = $"../TopPanel"
onready var improvements_panel = $"../ImprovementsPanel"
onready var shop_panel = $"../ShopPanel"


func _on_set_visible_shop_panel():
	is_active = !is_active
	set_visible_info(is_active)
	top_panel.set_visible_panel(is_active)
	improvements_panel.set_visible_panel(is_active)
	shop_panel.set_visible_panel(!is_active)


func set_visible_info(value):
	animation_player.play("expand" if value else "collapse")
