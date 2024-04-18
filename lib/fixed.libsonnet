{
    fix: function(f) function(x) f(self.fix(f))(x),
}
