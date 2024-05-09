extends StaticBody2D





func _ready():
	
	$closed.visible = true
	$opened.visible = false



func _on_key_chest_opened():
	get_tree().paused = true
	$"../Gameplay6b".visible =true
	$"../UserInterface".visible =false
	$closed.visible = false
	$opened.visible = true
	
	








