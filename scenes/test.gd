extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print("> NanoID.generate()")
	print(NanoID.generate())
	print()
	print('> NanoID.Generator.new("abc", 5).generate()')
	print(NanoID.Generator.new("abc", 5).generate())
	pass
