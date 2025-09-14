@icon("res://assets/IconGodotNode/node/icon_gear.png")
extends State

## vars ###################################################################

var jump_force: float = -800.0
var air_speed: float = 150.0
var gravity: float = 10.0
var move_dir: Vector2 = Vector2.ZERO

## transitions ###################################################################

func enter(_ctx := {}) -> void:
	Log.debug("Entered Jump State")

	# apply jump force
	actor.velocity.y = jump_force

func exit() -> void:
	move_dir = Vector2.ZERO

## input #####################################################################

func unhandled_input(event: InputEvent) -> void:
	if Trolls.is_move(event):
		move_dir = Trolls.move_vector()
	if Trolls.is_jump_released(event):
		jump_released()

## process ################################################################

# func process(_delta: float) -> void:
# 	pass

func physics_process(_delta: float) -> void:
	# horizontal movement while in air
	actor.velocity.x = move_dir.x * air_speed

	# apply gravity
	actor.velocity.y += gravity

	# clamp to terminal velocity
	actor.move_and_slide()

	if actor.is_on_floor():
		transit("Idle")
		return

	if actor.velocity.y < 0:
		transit("Fall")

# cut the jump short if the player releases the jump button
func jump_released():
	if actor.velocity.y < 0:
		actor.velocity.y *= 0.5

## properties ################################################################

## state meta

# can be the machine's initial state
func can_be_initial_state() -> bool:
	return false

# fired from actor.anim
func on_animation_finished() -> void:
	pass

# fired from actor.anim
func on_frame_changed() -> void:
	pass
