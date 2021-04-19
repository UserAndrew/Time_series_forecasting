MAPE1 = 0; 
MAPE2 = 0;
MAPE3 = 0; 
MSE1 = 0;
MSE2 = 0;
MSE3 = 0;
for jj = 3246:1:4091
    MAPE1 = MAPE1 + abs(B1(jj) - H1(jj - 3245))./B1(jj);
    MSE1 = MSE1 + (B1(jj) - H1(jj - 3245)).^2;
    if jj < 3319
        MAPE3 = MAPE3 + (abs(B1(jj) - H1(jj - 3245))./B1(jj));
        MSE3 = MSE3 + (B1(jj) - H1(jj - 3245)).^2;
    end
    if jj < 3391
        MAPE2 = MAPE2 + (abs(B1(jj) - H1(jj - 3245))./B1(jj));
        MSE2 = MSE2 + (B1(jj) - H1(jj - 3245)).^2;
    end
end