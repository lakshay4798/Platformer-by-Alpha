extends Area2D

const SPEED = 100.0
var direction = -1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += direction*SPEED*delta
	#pass
#

func _on_timer_timeout() -> void:
	direction *= -1

#player script
#extends CharacterBody2D
#@onready var animated_sprite_2d:AnimatedSprite2D = $AnimatedSprite2D
#@onready var jump_sound:AudioStreamPlayer2D = $jumpsound
##@onready var hayato_sound : AudioStreamPlayer2D = $hayato
#
#
#const SPEED = 300.0
#const JUMP_VELOCITY = -700.0
#var can_move = true
#
#
#func _physics_process(delta: float) -> void:
	##jump_sound.play()
	##add animation
	#if velocity.x> 1 or velocity.x <-1:
		#animated_sprite_2d.animation = "running"
	#else:
		#animated_sprite_2d.animation = "idle"
	#
	#
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
		#animated_sprite_2d.animation = "jumping"
#
	#if can_move:
#
	## Handle jump.
		#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			#velocity.y = JUMP_VELOCITY
			#jump_sound.play()
		##hayato_sound.play()
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
		#var direction := Input.get_axis("ui_left", "ui_right")
		#if direction:
			#velocity.x = direction * SPEED
		#else:
			#velocity.x = move_toward(velocity.x, 0, SPEED)
#
		#move_and_slide()
		#if direction == 1.0:
			#animated_sprite_2d.flip_h = false
		#elif direction == -1.0:
			#animated_sprite_2d.flip_h = true
		#
	##if get_mu ltiplayer_authority():
#
#
#
##sound by pressing KEY
##func _input(event):
	##if event is InputEventKey and event.pressed:
		##if event.keycode == KEY_X:
			##$hayato_sound.play()
			
			



#main script
#extends Node2D
#var level: int = 1
#var current_level_root: Node  = null
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#current_level_root = get_node("LevelRoot")
	#_load_level(level)
##setup the level
#
#
#
 ### Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta: float) -> void:
##pass
##### level Management #####
#
#func _load_level(level_number: int) -> void:
	#if current_level_root:
		#current_level_root.queue_free()
#
##change level
	#var level_path = "res://level%s.tscn" %level_number
	#current_level_root = load(level_path).instantiate()
	#add_child(current_level_root)
	#current_level_root.name = "LevelRoot" 
	#_setup_level(current_level_root)
#
#
#func _setup_level(level_root: Node) -> void:
##connect exit
	#var exit = level_root.get_node_or_null("exit")
	#if exit:
		#exit.body_entered.connect(_on_exit_body_entered)
#
##signal handlers
#func _on_exit_body_entered(body: Node2D) -> void:
	#if body.name == "player":
		#level += 1
		#print (level)
		#body.can_move = false
		#_load_level(level)
