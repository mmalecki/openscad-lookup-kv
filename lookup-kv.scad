function lookup_kv (map, key, default = undef) =
  // Support imported JSON:
  is_undef(map[key]) ? (
    let (s = search([key], map))
      // `[[]]` is returned when we find nothing. `undef` when the key type mismatches.
      (is_undef(s) || is_list(s[0])) ? default : map[s[0]][1]
  ) : map[key];
