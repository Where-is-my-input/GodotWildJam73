extends Camera2D

func _input(event: InputEvent) -> void:
	return
	if event.is_action_pressed("zoomIn"):
		zoom += Vector2(1,1)
		if zoom > Vector2(5, 5):
			zoom = Vector2(1,1)
	if event.is_action_pressed("zoomOut"):
		#if zoom == Vector2(1,1):
		zoom -= Vector2(0.1, 0.1)
		#else:
			#zoom -= Vector2(1,1)
