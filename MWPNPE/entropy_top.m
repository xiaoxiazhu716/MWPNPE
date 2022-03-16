%% entropy_top

chen_tp = [RE_B_DIP2010_2(:,1),RE_B_DIP2010_2(:,6),RE_B_DIP2010_2(:,9),RE_B_DIP2010_2(:,13)];%ÌØÕ÷¾ØÕóchen
f1_sum_tp = sum(chen_tp(:,2));
f2_sum_tp = sum(chen_tp(:,3));
f3_sum_tp = sum(chen_tp(:,4));
chen_B_tp(:,1) = chen_tp(:,1);
for i = 1:lines_small_DIP2010
chen_B_tp(i,2) = chen_tp(i,2)/f1_sum_tp;
chen_B_tp(i,3) = chen_tp(i,3)/f2_sum_tp;
chen_B_tp(i,4) = chen_tp(i,4)/f3_sum_tp;
end
chen_E_tp = ones(lines_small_DIP2010,3);
for i = 1:lines_small_DIP2010
chen_E_tp(i,1) = chen_B_tp(i,2) * log(chen_B_tp(i,2));
chen_E_tp(i,2) = chen_B_tp(i,3) * log(chen_B_tp(i,3));
chen_E_tp(i,3) = chen_B_tp(i,4) * log(chen_B_tp(i,4));
end
e1_tp = -sum(chen_E_tp(:,1)) / log(lines_small_DIP2010);
e2_tp = -sum(chen_E_tp(:,2)) / log(lines_small_DIP2010);
e3_tp = -sum(chen_E_tp(:,3)) / log(lines_small_DIP2010);
w1_tp = (1 - e1_tp) / (3 - e1_tp - e2_tp - e3_tp);
w2_tp = (1 - e2_tp) / (3 - e1_tp - e2_tp - e3_tp);
w3_tp = (1 - e3_tp) / (3 - e1_tp - e2_tp - e3_tp);
chen_w_tp = [w1_tp;w2_tp;w3_tp];

chen_H_tp(:,1) = chen_B_tp(:,1);
for i = 2:4
chen_H_tp(:,i) = chen_tp(:,i) * chen_w_tp(i-1,1);
end

%% 
chen_S = chen_H_tp(:,2) + chen_H_tp(:,3)+chen_H_tp(:,4);
he_S = sum(w_weight*chen_S);
H=zeros(lines_small_DIP2010);
for i = 1:lines_small_DIP2010
    for j = 1:lines_small_DIP2010
        if(i==j)
            H(i,j) = abs(chen_S(i,1)./he_S);
        else
            H(i,j) = min(chen_S(i,1) , chen_S(j,1))./he_S;
        end
    end
end