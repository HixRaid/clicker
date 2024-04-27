extends "res://game/scripts/interfaces/interface.gd"

onready var language_option_button = $Panel/SettingsControl/LanguagePanel/OptionButton
onready var scale_option_button = $Panel/SettingsControl/ScalePanel/OptionButton
onready var ui_control = $"%Control"

func _ready():
	if OS.has_feature("mobile") or OS.has_feature("web") and JavaScript.eval("/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)", true):
		_on_scale_selected(0)
		scale_option_button.selected = 0
	elif OS.has_feature("pc"):
		_on_scale_selected(2)
		scale_option_button.selected = 2
	
	set_safe_area()
	match OS.get_locale_language():
		"en":
			language_option_button.selected = 0
		"ru":
			language_option_button.selected = 1
		"tr":
			language_option_button.selected = 2


func set_safe_area():
	var safe_area = OS.get_window_safe_area()
	var ratio = get_viewport_rect().size.x / get_viewport().size.x
	ui_control.rect_position = ratio * safe_area.position
	ui_control.rect_size = ratio * safe_area.size


func _on_language_selected(index):
	match index:
		0:
			TranslationServer.set_locale("en")
		1:
			TranslationServer.set_locale("ru")
		2:
			TranslationServer.set_locale("tr")


func _on_scale_selected(index):
	match index:
		0:
			set_scale(1.15)
		1:
			set_scale(1)
		2:
			set_scale(0.75)


func set_scale(value):
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_EXPAND, Vector2(720, 1280), value)
	set_safe_area()
