extends Area2D


var revealed = false


var entered = false


func _on_body_entered(body: PhysicsBody2D):
	entered = true
	
	$"../fin2".visible= true
	print("d")
	
	$"../AnimatedSprite2D2".visible= true
	$"../Player".visible= false
	$"../Button/bravo".visible= true
	get_tree().paused = true
	$"../Button".visible= true
	
	


		
		
		
		
