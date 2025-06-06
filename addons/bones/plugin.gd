@tool
extends EditorPlugin

var reload_scene_btn: Button = Button.new()

func _enter_tree() -> void:
	add_autoload_singleton("Debug", "res://addons/bones/Debug.gd")
	add_autoload_singleton("Navi", "res://addons/bones/navi/Navi.gd")
	add_autoload_singleton("Juice", "res://addons/bones/Juice.gd")
	add_autoload_singleton("DJ", "res://addons/bones/DJ.gd")

	reload_scene_btn.pressed.connect(reload_scene)
	reload_scene_btn.text = "R"
	add_control_to_container(CONTAINER_TOOLBAR, reload_scene_btn)
	reload_scene_btn.get_parent().move_child(reload_scene_btn, reload_scene_btn.get_index() - 2)


func _exit_tree() -> void:
	# remove_autoload_singleton("Navi")
	# remove_autoload_singleton("Debug")
	remove_control_from_container(CONTAINER_TOOLBAR, reload_scene_btn)


func reload_scene() -> void:
	print("-------------------------------------------------")
	Log.info("[ReloadScene] ", Time.get_time_string_from_system())
	var edited_scene := EditorInterface.get_edited_scene_root()
	Log.info("edited scene", edited_scene, ".scene_file_path", edited_scene.scene_file_path)
	EditorInterface.reload_scene_from_path(edited_scene.scene_file_path)
	print("-------------------------------------------------")
