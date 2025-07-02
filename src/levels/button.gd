extends Button
var scene = preload("res://src/levels/level.tscn")





func _on_pressed() -> void:
	get_tree().change_scene_to_packed(scene)
