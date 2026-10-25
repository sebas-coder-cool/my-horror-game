extends Control

func _ready():
	Global.check_lifes()
# Called when the node enters the scene tree for the first time.
func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/started.tscn")
	
func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/shop.tscn")
