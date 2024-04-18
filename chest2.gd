extends StaticBody2D


func _ready():
	
	$closed.visible = true
	$opened.visible = false





	


func _on_key_chest_opened():
		get_tree().change_scene_to_file("res://gameplay2.tscn")
		$closed.visible = false
		$opened.visible = true
