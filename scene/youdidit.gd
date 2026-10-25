extends Control


# Called when the node enters the scene tree for the first time.

func _ready():
	Global.check_lifes()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/started.tscn")

func _on_back_to_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/control.tscn")

func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/shop.tscn")
