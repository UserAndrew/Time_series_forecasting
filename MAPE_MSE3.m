MAPE11 = 0; 
MAPE22 = 0;
MAPE33 = 0; 
MSE11 = 0;
MSE22 = 0;
MSE33 = 0;
for kk = 1748:1:2593
    MAPE11 = MAPE11 + abs(B2(kk) - H2(kk - 1747))./B2(kk);
    MSE11 = MSE11 + (B2(kk) - H2(kk - 1747)).^2;
    if kk < 1821
        MAPE33 = MAPE33 + (abs(B2(kk) - H2(kk - 1747))./B2(kk));
        MSE33 = MSE33 + (B2(kk) - H2(kk - 1747)).^2;
    end
    if kk < 1903
        MAPE22 = MAPE22 + (abs(B2(kk) - H2(kk - 1747))./B2(kk));
        MSE22 = MSE22 + (B2(kk) - H2(kk - 1747)).^2;
    end
end