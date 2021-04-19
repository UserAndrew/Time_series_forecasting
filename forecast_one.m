A = load('temperature_outdoor.txt');
B = A(end:-1:1);
%C = (1:5236)';          % точки для оси Х графиков
E = zeros(4391,1);
for i = 1:4391
    E(i) = B(i);
end
E1 = (1:4391)';
D = ssaspe(E,500);
F = ssafor(E,500,15,845);
figure(1);
plot(T,B);
grid on;
title('Зависимость температуры воздуха от времени','FontSize', 20);
xlabel('Время', 'Fontsize', 18);
%xlabel({'Время, t_n','t_n - t_{n-1} = 10 мин'}, 'FontSize', 18);
ylabel('Температура воздуха, \circC', 'FontSize', 18);
hold on;
G = zeros(850,1);
for i = 4386:1:5236
    G(i - 4385) = F(i);
end
%G1 = (4386:1:5236)';
plot(Th,G);
legend('эксперимент','прогноз');
%plot(C1,B1,'Color', 'b', 'Marker', 'o', 'MarkerSize', 2);
