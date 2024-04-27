extends Control

export var title = "Improvement"
export var price = 100
export var count = 0
export var max_count = 10
export var can_buy = true

onready var title_label = $TitleLabel
onready var price_count_label = $PriceCountLabel
onready var buy_button = $BuyButton


func _ready():
	apply_changes()


func apply_changes():
	title_label.text = title
	price_count_label.text = str(price) + "$ " + str(count) + "/" + str(max_count)
	buy_button.disabled = !can_buy
