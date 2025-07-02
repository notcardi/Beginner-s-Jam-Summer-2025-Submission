extends Area2D


# Called when the node enters the scene tree for the first time.

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.canmove = false
		body.visible = false
		body.global_position = $"TeleportObject".global_position
		await get_tree().create_timer(1).timeout
		body.visible = true
		body.canmove = true
