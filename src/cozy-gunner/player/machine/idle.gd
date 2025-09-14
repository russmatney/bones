@icon("res://assets/IconGodotNode/node/icon_gear.png")
extends State

## vars ###################################################################

var move_dir: Vector2

## transitions ###################################################################

func enter(_ctx := {}) -> void:
	Log.debug("Entered Idle State")

func exit() -> void:
	move_dir = Vector2.ZERO

## input #####################################################################

func unhandled_input(event: InputEvent) -> void:
	if Trolls.is_move(event):
		transit("Run")
	if Trolls.is_jump(event):
		transit("Jump")

## process ################################################################

# func process(_delta: float) -> void:
# 	pass

func physics_process(_delta: float) -> void:
	# slow the player's movement down
	actor.velocity = actor.velocity.move_toward(Vector2.ZERO, 0.7)

## properties ################################################################

## state meta

# can be the machine's initial state
func can_be_initial_state() -> bool:
	return true

# fired from actor.anim
func on_animation_finished() -> void:
	pass

# fired from actor.anim
func on_frame_changed() -> void:
	pass
