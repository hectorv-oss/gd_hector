extends GridContainer


func _on_button_12_pressed():
	get_tree().paused = false
	$"../Gameplay6b".visible = false
	$"../UserInterface".visible = true
