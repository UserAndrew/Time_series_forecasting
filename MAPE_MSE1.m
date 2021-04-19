MAPE_1 = 0; 
MAPE_2 = 0;
MAPE_3 = 0; 
MSE_1 = 0;
MSE_2 = 0;
MSE_3 = 0;
for ii = 4386:1:5236
    MAPE_1 = MAPE_1 + abs(B(ii) - G(ii - 4385))./B(ii);
    MSE_1 = MSE_1 + (B(ii) - G(ii - 4385)).^2;
    if ii < 4459
        MAPE_3 = MAPE_3 + (abs(B(ii) - G(ii - 4385))./B(ii));
        MSE_3 = MSE_3 + (B(ii) - G(ii - 4385)).^2;
    end
    if ii < 4531
        MAPE_2 = MAPE_2 + (abs(B(ii) - G(ii - 4385))./B(ii));
        MSE_2 = MSE_2 + (B(ii) - G(ii - 4385)).^2;
    end
end