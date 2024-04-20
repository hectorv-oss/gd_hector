extends Node2D

var revealed = false



	







func _on_button_6_pressed():
	if Input.is_action_just_pressed("left_click"):
		if revealed:
			self.hide()
		else:
			self.show()
		revealed = not revealed
