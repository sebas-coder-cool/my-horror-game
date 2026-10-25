extends Label

func _ready():
	text = str(Global.coins)
	Global.coins_changed.connect(update_coins)

func update_coins(new_amount):
	text = str(new_amount)
