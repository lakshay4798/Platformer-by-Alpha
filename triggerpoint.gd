#extends Area2D
#@export var apple_scene: PackedScene
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
#
#
#func _on_area_2d_body_entered(body):
	#if body.is_in_group("player"):
		#var apple = apple_scene.instantiate()
		## Spawn at Marker2D position (Point B)
		#apple.global_position = $"../Marker2D".global_position
		#get_tree().current_scene.add_child(apple)
