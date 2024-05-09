extends GridContainer



	
	
	


func _on_button_5_pressed():
	get_tree().paused = false
	$"../Gameplay10b".visible =false
	$"../UserInterface".visible =true
