extends Node


class Alphabets:
	# This alphabet uses `A-Za-z0-9_-` symbols.
	# The order of characters is optimized for better gzip and brotli compression.
	# References to the same file (works both for gzip and brotli):
	# `'use`, `andom`, and `rict'`
	# References to the brotli default dictionary:
	# `-26T`, `1983`, `40px`, `75px`, `bush`, `jack`, `mind`, `very`, and `wolf`
	const URL: String = "useandom-26T198340PX75pxJACKVERYMINDBUSHWOLF_GQZbfghjklqvwyzrict"
	
	# These alphabets are from https://github.com/CyberAP/nanoid-dictionary
	const NUMBERS: String = "1234567890"
	const LOWERCASE: String = "abcdefghijklmnopqrstuvwxyz"
	const UPPERCASE: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	const ALPHANUMERIC: String = NUMBERS + LOWERCASE + UPPERCASE
	const HEXADECIMAL_LOWERCASE: String = NUMBERS + "abcdef"
	const HEXADECIMAL_UPPERCASE: String = NUMBERS + "ABCDEF"
	const NO_LOOKALIKES: String = "346789ABCDEFGHJKLMNPQRTUVWXYabcdefghijkmnpqrtwxyz"
	const NO_LOOKALIKES_SAFE: String = "6789BCDFGHJKLMNPQRTWbcdfghjkmnpqrtwz"


class Generator:
	const DEFAULT_SIZE: int = 21

	var _default_size: int
	var _alphabet: String


	func _init(alphabet: String, default_size: int = DEFAULT_SIZE) -> void:
		self._alphabet = alphabet
		self._default_size = default_size


	func generate(size := _default_size) -> String:
		var id: String
		for i in range(size):
			id += _alphabet[randi() % _alphabet.length()]
		return id


var default_generator: Generator = Generator.new(Alphabets.URL)


func generate(size: int = Generator.DEFAULT_SIZE) -> String:
	return default_generator.generate(size)

