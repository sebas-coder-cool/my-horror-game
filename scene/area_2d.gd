extends Area2D

func _on_body_entered(body):
	if body.is_in_group("player"):
		Global.coins += 10
		get_tree().change_scene_to_file("res://scene/youdidit.tscn")
