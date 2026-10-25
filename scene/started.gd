extends Node2D

func _ready():
	Global.check_lifes()

# Called when the node enters the scene tree for the first time.
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/control.tscn")
	


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scene/lost.tscn")


func _on_area_2d_3_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.lifes = Global.lifes +1
		$Area2D3.hide()


func _on_secret_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://secret_room.tscn")
