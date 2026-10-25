extends Control

@onready var popup = $PopupPanel
@onready var popup2 = $PopupPanel2
@onready var popup3 = $PopupPanel3
@onready var coin_label = $Label

func _ready() -> void:
	popup.hide()
	update_coins()

func toon_popup():
	popup.popup_centered()
	
func toon_popup2():
	popup2.popup_centered()
	
func toon_popup3():
	popup3.popup_centered()

func update_coins():
	coin_label.text = str(Global.coins)

func _on_item_1_pressed() -> void:
	if Global.coins >= 30:
		Global.coins -= 30
		Global.lifes += 1
		update_coins()
		toon_popup2()
	else:
		toon_popup()

func _on_item_2_pressed() -> void:
	pass 

func _on_close_pressed() -> void:
	popup.hide()


func _on_close_2_pressed() -> void:
	popup2.hide()


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/control.tscn")


func _on_item_4_pressed() -> void:
	if Global.coins >= 150:
		Global.coins -= 150
		Global.speed += 20
		update_coins()
		toon_popup3()
	else:
		toon_popup()
