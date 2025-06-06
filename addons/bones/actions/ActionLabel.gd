@tool
extends Control
class_name ActionLabel

# we could pass an action and lookup the key via Trolley instead of setting it raw here
@export var action: String = ""
@export var key: String = ""


func set_label(ax: String) -> void:
	var lbl: RichTextLabel = get_node("%Label")
	lbl.text = ax


var key_icon := preload("res://addons/bones/actions/KeyIcon.tscn")


func add_key(k: String) -> void:
	var icon: Button = key_icon.instantiate()
	icon.text = k

	var key_list := get_node("%KeyList")
	key_list.add_child(icon)


func _ready() -> void:
	if Engine.is_editor_hint():
		request_ready()

		# var key_list = get_node("%KeyList")
		# for c in key_list.get_children():
		# 	key_list.remove_child(c)

		# add_key("T")
		# add_key("Test")

	if action:
		set_label(action)

	if key:
		var key_list := get_node("%KeyList")
		for c in key_list.get_children():
			key_list.remove_child(c)
			c.queue_free()

		add_key(key)
