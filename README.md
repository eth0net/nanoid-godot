# NanoID plugin for Godot

This plugin adds support for generating [NanoIDs](https://github.com/ai/nanoid)
to Godot.

## Installation

Copy the `addons/nanoid` directory into your project's `addons` directory.

## Usage

The `NanoID` class provides a static `generate` method that generates a NanoID
using the default alphabet and length.

The `NanoID.Generator` class provides a `generate` method that generates a
NanoID using a custom alphabet and length.

The `NanoID.Alphabets` enum provides a set of predefined alphabets that can be
used with the `NanoID.Generator` class.

## Example

```gdscript
extends Node

func _ready():
	print(NanoID.generate())
	print(NanoID.Generator.new("abc", 5).generate())
	print(NanoID.Generator.new(NanoID.Alphabets.LOWERCASE, 15).generate())
```

```text
4jwRVx491lZ3X3PtUAniJ
abcab
gnidzgxpwgefpkr
```
