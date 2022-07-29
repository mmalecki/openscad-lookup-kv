use <../lookup-kv.scad>;

json = import("./json.json");

assert(lookup_kv(json, "foo") == 24);
assert(lookup_kv(json, "bar").a == json["bar"]["a"]);
assert(lookup_kv(json, "bar").b == json["bar"]["b"]);
assert(lookup_kv(json, "nothing") == undef);
