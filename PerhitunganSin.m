% Nomor 3
true_value = sin(1);

% Nilai N yang akan diuji
N_values = [1, 2, 3, 4, 5];

% Nilai x
x = 1;

% Loop melalui nilai N
for N = N_values
    % Inisialisasi hasil deret Taylor
    taylor_result = 0;

    % Loop untuk menghitung deret Taylor (notasi sigma)
    for n = 0:N
        taylor_result = taylor_result + ((-1)^n) * (x^(2*n+1)) / factorial(2*n+1);
    end

    % Hitung galat (error)
    error = abs(true_value - taylor_result);

    % Tampilkan hasil
    fprintf('N = %d, Sin(1) ~ %.10f, Error = &.10f\n', N, taylor_result, error);
end

