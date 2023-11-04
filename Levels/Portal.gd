extends Area2D


func _on_body_entered(body):
	var current_level = get_tree().current_scene.scene_file_path
	if body.name == "Player":
		if current_level == "res://Game.tscn":
			get_tree().change_scene_to_file("res://Level2.tscn")
		elif current_level == "res://Level2.tscn":
			get_tree().change_scene_to_file("res://Level3.tscn")
		elif current_level == "res://Level3.tscn":
			get_tree().change_scene_to_file("res://Game.tscn")
