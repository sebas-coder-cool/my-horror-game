extends Label

func _ready():
	update_lifes()

func update_lifes():
	text = str(Global.lifes)
