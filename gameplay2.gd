extends GridContainer







func _on_button_7_pressed():
	$"../Gameplay2b".visible = false
	get_tree().paused = false
	$UserInterface.visible = true

