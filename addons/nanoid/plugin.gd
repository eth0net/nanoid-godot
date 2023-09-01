@tool
extends EditorPlugin


const NanoIDIcon: Texture2D = preload("res://addons/nanoid/icon.svg")


func _init() -> void:
	self.name = 'NanoIDPlugin'


func _enter_tree() -> void:
	add_autoload_singleton("NanoID", "res://addons/nanoid/nanoid.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("NanoID")


func _get_plugin_name() -> String:
	return "NanoID"


func _get_plugin_icon() -> Texture2D:
	return NanoIDIcon
