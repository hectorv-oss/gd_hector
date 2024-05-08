extends GridContainer





	
func _on_button_12_pressed():
	process_mode=PROCESS_MODE_INHERIT
	get_tree().change_scene_to_file("res://main.tscn")
