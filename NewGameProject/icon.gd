extends Sprite2D

@export var speed: float = 200.0

func _process(delta):
	var move_dir = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		move_dir.x += 1
	elif Input.is_action_pressed("ui_left"):
		move_dir.x -= 1

	if move_dir.x > 0:
		print("Moving right!")
	elif move_dir.x < 0:
		print("Moving left!")
	else:
		print("Standing still!")

	position += move_dir * speed * delta
