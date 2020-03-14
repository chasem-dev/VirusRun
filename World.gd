extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(20):
		var duplicate_runway = $Runway/Runway1.duplicate()
		duplicate_runway.name = str("Runway", i)
		duplicate_runway.transform.origin.z = 7 + ((i+1) * 16)
		$Runway.add_child(duplicate_runway)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
