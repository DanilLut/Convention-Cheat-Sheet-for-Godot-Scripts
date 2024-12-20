@tool
extends EditorPlugin

var dock: Control


func _enter_tree() -> void:
	dock = preload('res://addons/godot_conventions_cheat_sheet/dock.tscn').instantiate()
	dock.name = 'Conventions'

	add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_BR, dock)


func _exit_tree() -> void:
	remove_control_from_docks(dock)
	dock.queue_free()
