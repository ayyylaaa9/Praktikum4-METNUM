%Nomor 1
x = input('Input nilai x : ');
n = input('Input nilai n : ');

eksak = exp(x);

p = 0;
for i = 0:n,
  p = p + (x^i/factorial(i));
end

galat = abs(eksak - p);

fprintf('Eksak\t\t= %5.15f\n', eksak)
fprintf('Pendekatan\t= %5.15f\n', p)
fprintf('Error\t\t= %5.15f\n', galat)
