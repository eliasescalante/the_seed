extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Curtains_animation.play("curtains")
	AudioManager.get_node("Main/main_intro").play()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	$Curtains_animation.play("curtains_ending")
	AudioManager.get_node("Main/main_intro").stop()
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://src/scenes/lore.tscn")
	pass # Replace with function body.


func _on_credits_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	pass # Replace with function body.
