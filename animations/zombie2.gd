extends CharacterBody2D

var walk = false
const SPEED = 160.0
const GRAVITY = 1500.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var player: CharacterBody2D

func _ready():
	player = get_tree().get_first_node_in_group("player")
	await get_tree().create_timer(2.5).timeout
	walk = true

func _physics_process(delta):
	# Zwaartekracht
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Zoek de Player
	if player == null:
		velocity.x = 0
		move_and_slide()
		return

	# Volg de Player
	var direction = sign(player.global_position.x - global_position.x)

	velocity.x = direction * SPEED
	

	# Zombie omdraaien
	if direction != 0:
		animated_sprite.flip_h = direction < 0
		animated_sprite.play("walking")
	
	if not walk:
		return

	move_and_slide()

	for i in range(get_slide_collision_count()):
		var collision = get_slide_collision(i)
		var body = collision.get_collider()

		if body is Node and body.is_in_group("player"):
			get_tree().change_scene_to_file("res://scene/lost.tscn")
			return
