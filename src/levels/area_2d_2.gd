extends Area2D
var isPlayerInArea = false
@onready var Door2 = $"../Door2/Door"
@onready var doorPos = $"../Door2/DoorPos"
var isTimestopEnabled: bool = false


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$"../Door2/CollisionShape2D".set_deferred("disabled", true)
		var tween = create_tween()
		tween.tween_property(Door2, "global_position", Vector2(doorPos.global_position.x, doorPos.global_position.y - 100),0.2)


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player" and not isTimestopEnabled:
		var tween = create_tween()
		tween.tween_property(Door2, "global_position", Vector2(Door2.global_position.x, Door2.global_position.y + 100),0.2)
		$"../Door2/CollisionShape2D".set_deferred("disabled", false)

func getTimestop(isEnabled):
	isTimestopEnabled = isEnabled

func _on_tree_exiting() -> void:
	EventBus.timeStopEvent.connect(getTimestop)


func _on_tree_entered() -> void:
	EventBus.timeStopEvent.connect(getTimestop)
