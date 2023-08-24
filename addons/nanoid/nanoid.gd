extends Node


# This alphabet uses `A-Za-z0-9_-` symbols.
# The order of characters is optimized for better gzip and brotli compression.
# References to the same file (works both for gzip and brotli):
# `'use`, `andom`, and `rict'`
# References to the brotli default dictionary:
# `-26T`, `1983`, `40px`, `75px`, `bush`, `jack`, `mind`, `very`, and `wolf`
const URL_ALPHABET: StringName = 'useandom-26T198340PX75pxJACKVERYMINDBUSHWOLF_GQZbfghjklqvwyzrict'

const DEFAULT_SIZE: int = 21


class Generator:
	var _default_size: int
	var _generator: Variant
	
	
	func _init(alphabet: String, default_size: int = DEFAULT_SIZE) -> void:
		self._default_size = default_size
		self._generator = func generate(size: int = default_size) -> String:
			var id: String
			for i in range(size):
				id += alphabet[randi() % alphabet.length()]
			return id
	
	
	func generate(size := _default_size) -> String:
		return _generator.call(size)


func generate(size := DEFAULT_SIZE):
	return Generator.new(URL_ALPHABET).generate(size)
