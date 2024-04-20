extends Area2D
#kirby
var getmagnet = false



func _physics_process(delta):
	if getmagnet ==false:
		position.y +=0
		
	var bodies = get_overlapping_areas()
	for body in bodies :
		if Input.is_action_pressed("suck"):
			if body.name == "magnet":
				getmagnet = true
				position +=(get_parent().get_node("Player").position - position)/10
				
	var bodies2 = get_overlapping_bodies()
	for body in bodies2:
		if body.name == "Player":
			
			get_parent().get_node("Player").score +=1
			print(get_parent().get_node("Player").score )
			queue_free()
		
		
