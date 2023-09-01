# NanoID plugin for Godot

This plugin adds support for generating [NanoIDs](https://github.com/ai/nanoid)
to Godot.

## Installation

Copy the `addons/nanoid` directory into your project's `addons` directory and
then enable the plugin in project settings.

## Usage

The `NanoID` class provides a static `generate` method that generates a NanoID
using the default alphabet. The `generate` method takes an optional size
argument. The default alphabet is `A-Za-z0-9_-` and the default size is 21.

The `NanoID` class provides a static `with_alphabet` method that generates a
NanoID using a given alphabet. The `with_alphabet` method takes an alphabet
string and an optional size argument. The default size is 21.

The `NanoIDAlphabets` class provides a set of predefined alphabets that can be
used with the `NanoIDGenerator` class and the `NanoID.with_alphabet` method.

The `NanoIDGenerator` class provided a reusable mechanism to generate NanoIDs
with the same alphabet and size. The class constructor takes an optional
alphabet string and an optional default size to use for generating IDs. The
default alphabet is `A-Za-z0-9_-` and the default size is 21.

The `NanoIDGenerator` class provides a `generate` method that generates a
NanoID using the generator alphabet and size. The `generate` method takes an
optional size argument to override the generator default size.

## Example

```gdscript
print(NanoID.generate())
print(NanoID.generate(5))
print(NanoID.with_alphabet("abc", 10))
print(NanoID.with_alphabet(NanoIDAlphabets.LOWERCASE))
```

```text
sfwL2cnmzZVumDZdyzesD
my7te
bcbabbacbc
cdjrvqgpeaglhqmokxpoz
```
