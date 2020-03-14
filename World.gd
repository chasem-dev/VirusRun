extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	# Spawns 20 Runway platforms
	for i in range(0):
		var duplicate_runway = $Runway/Runway1.duplicate()
		duplicate_runway.name = str("Runway", i)
		duplicate_runway.transform.origin.z = 7 + ((i+1) * 16)
		$Runway.add_child(duplicate_runway)
		for j in rand_range(1,6):
			var new_tp = $ToiletPaper/ToiletPaper1.duplicate()
			new_tp.name = str("Runway-TP", i, j)
			new_tp.transform.origin.x = (new_tp.transform.origin.x - rand_range(1, 6))
			new_tp.transform.origin.z = (duplicate_runway.transform.origin.z) + (j + 4)
			$ToiletPaper.add_child(new_tp)
