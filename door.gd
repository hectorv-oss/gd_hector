extends Area2D

@export_file var dest_scene
var entered = false
var keytaken = false
var in_chest_zone = false


func _on_body_entered(body: PhysicsBody2D):
	entered = true


func _on_body_exited(body):
	entered = false
	

func _physics_process (_delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file("res://stage_2.tscn")
					
			
	
