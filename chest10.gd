extends StaticBody2D

func _ready():
	
	$closed.visible = true
	$opened.visible = false






func _on_key_2_chest_opened():
	get_tree().change_scene_to_file("res://gameplay10.tscn")
	$closed.visible = false
	$opened.visible = true
