extends Node2D

var player = null

func _ready():
	Global.player.get_child(0).global_position = Vector2(32,32)
	add_child(Global.player)
	Global.player.enterFloor()

func _on_bonfire_body_entered(body: Node2D) -> void:
	player = body

func _process(delta: float) -> void:
	if player != null:
		player.heal(5)

func _on_bonfire_body_exited(body: Node2D) -> void:
	player = null
