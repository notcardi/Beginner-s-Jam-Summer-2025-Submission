extends Node2D
var playerscn = preload("res://src/levels/Player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var spawnPoint = $spawnpoint
	var player = playerscn.instantiate()
	player.global_position = spawnPoint.global_position
	add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
