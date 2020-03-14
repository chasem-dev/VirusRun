extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var y = 0
var up = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(Vector3(0,1,0), 0.05)
	
	if up:
		if y < 0.2:			
			y += 0.008
		else:
			up = false
	else:
		if y > 0:			
			y -= 0.008
		else:
			up = true
	transform.origin.y = y
	pass

func on_player_pickup(player):
	queue_free()
	pass

func _on_Area_body_entered(body):
	if(body.name == "Player"):
		on_player_pickup(body)
