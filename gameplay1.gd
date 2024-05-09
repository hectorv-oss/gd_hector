extends GridContainer


var revealed = false


	
func _on_button_12_pressed():
	$".".visible = false
	get_tree().paused = false
	$"../UserInterface".visible = true
