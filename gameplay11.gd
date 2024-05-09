extends GridContainer









func _on_button_6_pressed():
	get_tree().paused = false
	$"../Gameplay11b".visible = false
	$"../UserInterface".visible = true

	
