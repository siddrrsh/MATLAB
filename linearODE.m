clear;A = [2 2;5 -1];[V L] = eig(A); % get eigenvectors/eigenvalues% initial conditionsy1 = 0;y2 = 7;x = 1.5;x0 = 1;V1 = V(1,1)*e^(L(1,1)*x0);V2 = V(1,2)*e^(L(2,2)*x0);V3 = V(2,1)*e^(L(1,1)*x0);V4 = V(2,2)*e^(L(2,2)*x0);Z = [V1 V2;V3 V4];% find c1 and c2B = [y1;y2];A= Z\B; % use backlash to solve system of lin. eq.constant1 = A(1,1);constant2 = A(2,1);% redefine y1 and y2y1 = constant1*V(1,1)*e^((L(1,1)*x)) + constant2*V(1,2)*e^((L(2,2)*x));y2 = constant1*V(2,1)*e^((L(1,1)*x)) + constant2*V(2,2)*e^((L(2,2)*x));% find answery1y2%Output:%y1 =  109.096726%y2 =  109.445235%Output 2.0:%y1 =  14.332%y2 =  15.894  