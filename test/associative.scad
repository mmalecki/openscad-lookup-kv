use <../lookup-kv.scad>;

dict = [
  ["foo", 420],
  ["bar", [["a", 13], ["b", 14]]]
];

assert(lookup_kv(dict, "foo") == 420);
assert(lookup_kv(dict, "bar") == dict[1][1]);
assert(lookup_kv(dict, "nothing") == undef);
assert(lookup_kv(dict, "default", 15) == 15);
