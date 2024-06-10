extends Control

export var title = "Improvement"
export var clicks_per_second = 1
export var price = 100
export var can_buy = true

onready var title_label = $TitleLabel
onready var clicks_per_second_label = $ClicksPerSecondLabel
onready var price_label = $BuyButton/PriceLabel
onready var buy_button = $BuyButton


func _ready():
	apply_changes()


func apply_changes():
	title_label.text = title
	clicks_per_second_label.text = "+" + str(clicks_per_second) + " click/sec"
	price_label.text = str(price) + "$"
	buy_button.disabled = !can_buy
