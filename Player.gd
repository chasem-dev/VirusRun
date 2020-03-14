extends KinematicBody

var speed = 6
var velocity = Vector3(0,-1,speed)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):			
	if !is_on_floor(): # John Mayor
		velocity.y -= 1
			
	velocity.x = 0		
	
	if Input.is_key_pressed(KEY_A):
		velocity.x += speed
	
	if Input.is_key_pressed(KEY_D):
		velocity.x -= speed	
				
#	print(is_on_floor())				
				
	move_and_slide(velocity, Vector3( 0, 1, 0 ))

#	print(is_on_floor())

	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = 13

#	move_and_slide(velocity)
