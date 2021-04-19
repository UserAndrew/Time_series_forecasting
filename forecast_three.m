B2 = zeros(2592,1);
for i = 1500:4092
    B2(i - 1499) = B1(i);
end
%B22 = (1:2593)';
C2 = (1:1747)';
C22 = zeros(1748,1);
for i = 1:1748
    C22(i) = B2(i);
end
D2 = ssaspe(C22,400);
F2 = ssafor(C22,400,9,845);
figure(3);
plot(T_T,B2);
grid on;
title('Зависимость температуры воздуха от времени','FontSize', 20);
xlabel('Время', 'Fontsize', 18);
%xlabel({'Время, t_n','t_n - t_{n-1} = 10 мин'}, 'FontSize', 18);
ylabel('Температура воздуха, \circC', 'FontSize', 18);
hold on;
H2 = zeros(845,1);
for i = 1748:2593
    H2(i - 1747) = F2(i);
end
%H11 = (1748:1:2593)';
plot(TT_h,H2);
