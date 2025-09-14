extends CharacterBody2D

## vars ######################################################################

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D
@onready var machine: Machine = $Machine

func to_pretty() -> Variant:
	return {name=name, position=position, machine=machine}

## ready ######################################################################

func _ready() -> void:
	Log.info("Player ready", self)
	machine.start({actor=self})

	# connect to the machine's state_changed signal
	machine.transitioned.connect(_on_transit)

func _on_transit(state_name: String) -> void:
	Log.info("Player transitioned to state", state_name)
	# if anim:
	# 	anim.animation = state_name
	# 	anim.play()
