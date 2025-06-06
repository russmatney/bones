extends "res://addons/gd-plug/plug.gd"

func _plugging():
	plug("nathanhoad/godot_input_helper", {include=["addons/input_helper"]})
	plug("nathanhoad/godot_sound_manager", {include=["addons/sound_manager"]})
	plug("timothyqiu/gdfxr")
	plug("viniciusgerevini/godot-aseprite-wizard", {include=["addons/AsepriteWizard"]})
	plug("russmatney/log.gd", {include=["addons/log"]})
	plug("SimonGigant/godot-text_effects_4.0")
	# TODO move to this: plug("chairfull/GodotRichTextLabel2")
