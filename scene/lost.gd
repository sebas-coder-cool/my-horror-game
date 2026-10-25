extends Control

@onready var popup = $PopupPanel
# Called when the node enters the scene tree for the first time.

func _ready():
	Global.check_lifes()
	popup.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func toon_popup():
	popup.popup_centered()


func _on_retry_pressed() -> void:
	if Global.no_lifes >=1:
		print("no lifes")
		toon_popup()
	else:
		get_tree().change_scene_to_file("res://scene/started.tscn")
		Global.lifes = Global.lifes -1

func _on_back_to_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/control.tscn")

func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/shop.tscn")


func _on_button_pressed() -> void:
	popup.hide()
