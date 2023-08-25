# NanoID plugin for Godot

This plugin adds support for generating [NanoIDs](https://github.com/ai/nanoid)
to Godot.

## Installation

Copy the `addons/nanoid` directory into your project's `addons` directory.

## Usage

The `NanoID` class constructor takes an optional size argument and calls the `generate` method to generate a new NanoID with the default alphabet. The default alphabet is `A-Za-z0-9_-` and the default size is 21 characters.

The `NanoID` class provides a static `generate` method that generates a NanoID
using the default alphabet. The `generate` method can also be called on an
instance of the `NanoID` class to generate a new NanoID using the alphabet and size.

The `NanoID` class provides a static `with_alphabet` method that generates a
NanoID using a given alphabet. The `with_alphabet` method takes an alphabet string and an optional size argument. The default size is 21 characters.

The `NanoID.Alphabets` enum provides a set of predefined alphabets that can be
used with the `NanoID.Generator` class and the `NanoID.with_alphabet` method.

The `NanoID.Generator` class provides a `generate` method that generates a
NanoID using a given alphabet. The `generate` method takes an alphabet string
and an optional size argument. The default size is 21 characters. This class
is used internally by the `NanoID` class to generate NanoIDs.

## Example

```gdscript
print(NanoID.new())
print(NanoID.new(3))
print(NanoID.generate())
print(NanoID.generate(5))
print(NanoID.with_alphabet("abc", 10))
print(NanoID.with_alphabet(NanoID.Alphabets.LOWERCASE))
```

```text
dLAomMtqdxnBngH3e0nmk
5We
sfwL2cnmzZVumDZdyzesD
my7te
bcbabbacbc
cdjrvqgpeaglhqmokxpoz
```
