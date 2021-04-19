B1 = zeros(4091,1);
for i = 1145:5236
    B1(i - 1144) = B(i);
end
%C1 = (1:4092)';
B_a = zeros(3246,1);
for i = 1:3246
    B_a(i) = B1(i);
end
D1 = ssaspe(B_a,400);
F1 = ssafor(B_a,400,13,845);
%B_a1 = (1:3246);
figure(2);
plot(TT,B1);
grid on;
title('Зависимость температуры воздуха от времени','FontSize', 20);
xlabel('Время', 'Fontsize', 18);
%xlabel({'Время, t_n','t_n - t_{n-1} = 10 мин'}, 'FontSize', 18);
ylabel('Температура воздуха, \circC', 'FontSize', 18);
hold on;
H1 = zeros(845,1);
for j = 3246:1:4091
    H1(j - 3245) = F1(j);
end
H = (3246:1:4091)';
plot(TTh,H1);
