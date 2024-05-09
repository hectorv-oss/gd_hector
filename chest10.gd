extends StaticBody2D

func _ready():
	
	$closed.visible = true
	$opened.visible = false






func _on_key_2_chest_opened():
	get_tree().paused = true
	$"../../Gameplay10b".visible =true
	$"../../UserInterface".visible =false
	$closed.visible = false
	$opened.visible = true
