local f = import 'fixed.libsonnet';
{
  almostFib:: function(f) function(n) if n < 2 then n else f(n - 1) + f(n - 2),
  fib:: f.fix(self.almostFib),
  testFibonacci: std.assertEqual(self.fib(16), 987),
  almostSet:: function(this) {
    foo: 'foo',
    bar: 'bar',
    foobar: this.foo + this.bar,
    qux: this.foo + this.foobar,
  },
  set:: f.fix0(self.almostSet),
  testSet: std.assertEqual(self.set, { foo: 'foo', bar: 'bar', foobar: 'foobar', qux: 'foofoobar' }),
}
