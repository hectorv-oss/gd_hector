extends CharacterBody2D




var speed = 600
var click_position = Vector2(0, 0)


# Called when the node enters the scene tree for the first time.
func _ready():
	click_position = Vector2(position.x, position.y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if Input.is_action_just_pressed("left_click"):
		click_position = get_global_mouse_position()
		
	var target_position = (click_position - position).normalized()
	
	if position.distance_to(click_position) > 3:
		velocity = target_position * speed
		move_and_slide()
		look_at(click_position)
