static func generate(size: int = NanoIDGenerator.DEFAULT_SIZE) -> String:
	return with_alphabet(NanoIDAlphabets.URL)


static func with_alphabet(alphabet: String, size: int = NanoIDGenerator.DEFAULT_SIZE) -> String:
	return NanoIDGenerator.new(alphabet).generate(size)
