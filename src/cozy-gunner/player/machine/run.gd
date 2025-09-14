@icon("res://assets/IconGodotNode/node/icon_gear.png")
extends State

## vars ###################################################################

# var machine: Machine
# var actor: Node2D

var speed: float = 1000.0
var gravity: float = 1.0
var move_dir: Vector2 = Vector2.ZERO

# below this speed, we kill movement and go straight to idle
var idle_threshold: float = 0.1

## transitions ###################################################################

func enter(_ctx := {}) -> void:
	Log.debug("Entered Run State")
	actor.velocity.x = Trolls.move_vector().x * speed

func exit() -> void:
	move_dir = Vector2.ZERO

## input #####################################################################

func unhandled_input(event: InputEvent) -> void:
	if Trolls.is_jump(event):
		transit("Jump")
	if Trolls.is_move(event):
		move_dir = Trolls.move_vector()
		# continue running? apply move direction?

## process ################################################################

# func process(_delta: float) -> void:
# 	pass

func physics_process(_delta: float) -> void:
	actor.velocity.x = move_dir.x * speed
	# apply gravity
	actor.velocity.y += gravity
	# TODO clamp to terminal velocity
	actor.move_and_slide()

	if actor.is_on_floor() and abs(actor.velocity.x) < idle_threshold and Trolls.move_vector() == Vector2.ZERO:
		if move_dir == Vector2.ZERO:
			transit("Idle")

## properties ################################################################

## state meta

# can be the machine's initial state
# func can_be_initial_state() -> bool:
# 	return true

# fired from actor.anim
# func on_animation_finished() -> void:
# 	pass

# fired from actor.anim
# func on_frame_changed() -> void:
# 	pass
