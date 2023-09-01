@tool
extends Node

# this prints nanoids in output when saving files
func _notification(what: int) -> void:
	if what == NOTIFICATION_EDITOR_POST_SAVE:
		print()
		print(NanoID.generate())
		print(NanoID.generate(5))
		print(NanoID.with_alphabet("abc", 10))
		print(NanoID.with_alphabet(NanoID.Alphabets.LOWERCASE))
		print()
