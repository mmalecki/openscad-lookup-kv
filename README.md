# `lookup_kv`
An OpenSCAD library to look up keys in both associative arrays, as well as objects.
Objects cannot be created in OpenSCAD [yet](https://github.com/openscad/openscad/issues/4203), but they can be imported from JSON by
calling `import("<filename>.json")`.

## Installation
Add a git submodule to your project:

```sh
git submodule add https://github.com/mmalecki/openscad-lookup-kv lookup-kv
```
## Usage
```openscad
use <lookup-kv/lookup-kv.scad>;

dict = [
  ["foo", 42],
  ["bar", [["a", 13], ["b", 14]]]
];
echo(lookup_kv(dict, "foo")); // Will echo 42

json = import("./json.json");
echo(lookup_kv(json, "foo")); // Will echo whatever `json.json` says.
```
### API

#### `lookup_kv(dict, key, default = undef)`
Look up key `key` in object or associative array `dict`.

Arguments:
  * `dict` (object or associative array) - dictionary to search
  * `key` (string) - key to look for
  * `default` - what to return when the key isn't found
