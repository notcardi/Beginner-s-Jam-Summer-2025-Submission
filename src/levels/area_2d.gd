extends Area2D
var isPlayerInArea = false
var playerRef
var scene = preload("res://src/levels/mainmenu.tscn")
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.find_child("Labels").visible = true
		isPlayerInArea = true
		#playerRef = body
func _input(event: InputEvent):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and isPlayerInArea:
			get_tree().change_scene_to_file("res://src/levels/level2.tscn")
		


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		body.find_child("Labels").visible = false
		isPlayerInArea = false
