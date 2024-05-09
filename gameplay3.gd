extends GridContainer





func _on_button_8_pressed():
	$"../Gameplay3b".visible = false
	get_tree().paused = false
	$"../UserInterface".visible = true
