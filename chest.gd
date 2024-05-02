extends StaticBody2D


var revealed = false
# Called when the node enters the scene tree for the first time.



	

func _ready():
	$closed.visible = true
	$opened.visible = false



func _on_key_chest_opened():
	get_tree().change_scene_to_file("res://gameplay1.tscn")
	$closed.visible = false
	$opened.visible = true	
	
		
	
	








