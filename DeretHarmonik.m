%Nomor 2
n = input('Masukkan nilai n: ');

% (a) For Loop tanpa pembulatan
S1 = 0;
for k = 1:n
    S1 = S1 + 1/k;
end

% (b) While loop dengan pembulatan 2 desimal (kompatibel)
S2 = 0;
k = 1;
while k <= n
    nilai_raw = 1/k;
    nilai = round(nilai_raw * 100) / 100; % bulatkan ke 2 desimal
    S2 = S2 + nilai;
    k = k + 1;
end

% (c) Tanpa looping, pakai sum()
S3 = sum(1./(1:n));

% Tampilkan hasil
fprintf('=============================================\n');
fprintf('Hasil Perhitungan Deret Harmonik (n = %d)\n', n);
fprintf('=============================================\n');
fprintf('(a) Dengan for loop (tanpa pembulatan)        : %.10f\n', S1);
fprintf('(b) Dengan while loop (pembulatan 2 desimal) : %.2f\n', S2);
fprintf('(c) Tanpa looping (sum)                       : %.10f\n', S3);
fprintf('=============================================\n');
