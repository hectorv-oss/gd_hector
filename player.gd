extends CharacterBody2D

@export var speed : float = 200.0
@export var jump_velocity : float = -400.0

@onready var animated_sprite = $AnimatedSprite2D
@onready var actionable_finder: Area2D = $direction/actionablefinder

const wall_jump_pushback = 100

const wall_slide_gravity =110
var is_wall_sliding = false
var revealed = false

const Dash_speed =800
var dashing= false
var can_dash = true
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	# Add the gravity.
	if not is_on_floor() :
		velocity.y += gravity * delta
		

 

	# Handle jump.#wall jump et slide

	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		
			
			
		
	if is_on_wall() and Input.is_action_just_pressed("right"):
		velocity.y = jump_velocity
		velocity.x =wall_jump_pushback
	if is_on_wall() and Input.is_action_just_pressed("left"):
		velocity.y = jump_velocity
		velocity.x =wall_jump_pushback
		
	if Input.is_action_just_pressed("dash") and can_dash:
		dashing= true
		can_dash = false
		$dash_timer.start()
		$dash_again_timer.start()
		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		if dashing:
			velocity.x = direction * Dash_speed
		else:
			velocity.x = direction * speed
			$AnimatedSprite2D.animation = "walk"
			$AnimatedSprite2D.flip_h = velocity.x < 0
			$AnimatedSprite2D.play()
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		$AnimatedSprite2D.animation = "idle"
		$AnimatedSprite2D.play()

	move_and_slide()
	wall_slide(delta)
func _on_animated_sprite_2d_animation_finished():
	animated_sprite.play("idle")
	

			
#score

var score=0

#slide

func wall_slide(delta):
	if is_on_wall() :
		
		if Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right"):
			
			is_wall_sliding = true
		else:
			is_wall_sliding = false
	else:
		
		is_wall_sliding = true
	
	if is_wall_sliding:
		
		velocity.y +=(wall_slide_gravity * delta)
		velocity.y = min(velocity.y, wall_slide_gravity)





#make it stop dashing
func _on_dash_timer_timeout():
	dashing = false
	

func _on_dash_again_timer_timeout():
	can_dash = true
	

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("chat"):
		var actionables=actionable_finder.get_overlapping_areas()
		if actionables.size() >0:
			actionables[0].action()
			return
			
			
		
			
			

