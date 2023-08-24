@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("NanoID", "res://addons/nanoid/nanoid.gd")
