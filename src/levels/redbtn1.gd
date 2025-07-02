extends Area2D
var isPlayerInArea = false
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.find_child("Labels").visible = true
		isPlayerInArea = true
		#playerRef = body
func _input(event: InputEvent):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E and isPlayerInArea:
			$"../Door/CollisionShape2D".set_deferred("disabled", true)
			$"../Door/Door".visible = false
			$"../Bridge/CollisionShape2D".set_deferred("disabled", true)
			$"../Bridge/bridge".visible = false
			


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		body.find_child("Labels").visible = false
		isPlayerInArea = false


func _on_area_2d_2_tree_entered() -> void:
	pass # Replace with function body.
