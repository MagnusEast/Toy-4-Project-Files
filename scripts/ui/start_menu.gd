extends Control



func _on_retry_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_scene.tscn")


func _on_close_button_pressed():
	get_tree().change_scene_to_file("res://scenes/ui/credits.tscn")
