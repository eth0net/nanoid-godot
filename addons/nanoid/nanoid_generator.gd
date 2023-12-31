class_name NanoIDGenerator


const DEFAULT_SIZE: int = 21

var default_size: int
var alphabet: String


func _init(alphabet: String = NanoIDAlphabets.URL, default_size: int = DEFAULT_SIZE) -> void:
	self.alphabet = alphabet
	self.default_size = default_size


func generate(size := default_size) -> String:
	var id: String
	for i in range(size):
		id += alphabet[randi() % alphabet.length()]
	return id
