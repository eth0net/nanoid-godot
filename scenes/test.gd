extends Node

func _ready():
	print(NanoID.generate())
	print(NanoID.Generator.new("abc", 5).generate())
	print(NanoID.Generator.new(NanoID.Alphabets.LOWERCASE, 15).generate())
