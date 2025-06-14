extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationManager.play("intro")
	await get_tree().create_timer(3.0).timeout
	$AnimationManager.play("phara")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
