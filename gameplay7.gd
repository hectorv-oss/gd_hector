extends GridContainer





func _on_button_11_pressed():
	$"../Gameplay7b".visible = false
	get_tree().paused = false
	$"../UserInterface".visible = true
