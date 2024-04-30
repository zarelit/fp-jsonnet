{
  inspect: function(name, x)
    local type = std.type(x);
    local size = if
      type == 'function'
      || type == 'array'
      || type == 'object'
      || type == 'string'
    then std.length(x)
    else 0;
    std.trace('%s is a %s (size=%d)' % [name, type, size], x),
}
