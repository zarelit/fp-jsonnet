{
  fix0: function(f) f(self.fix0(f)),
  fix: function(f) function(x) f(self.fix(f))(x),
}
