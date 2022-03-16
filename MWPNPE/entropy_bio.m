%% entropy_bio

chen_sf = [RE_B_DIP2010_2(:,1),RE_B_DIP2010_2(:,5)+1,RE_B_DIP2010_2(:,16)+1];%ÌØÕ÷¾ØÕóchen
f1_sum_sf = sum(chen_sf(:,2));
f2_sum_sf = sum(chen_sf(:,3));
chen_B_sf(:,1) = chen_sf(:,1);
for i = 1:lines_small_DIP2010
chen_B_sf(i,2) = chen_sf(i,2)/f1_sum_sf;
chen_B_sf(i,3) = chen_sf(i,3)/f2_sum_sf;
end
chen_E_sf = ones(lines_small_DIP2010,2);
for i = 1:lines_small_DIP2010
chen_E_sf(i,1) = chen_B_sf(i,2) * log(chen_B_sf(i,2));
chen_E_sf(i,2) = chen_B_sf(i,3) * log(chen_B_sf(i,3));
end
e1_sf = -sum(chen_E_sf(:,1)) / log(lines_small_DIP2010);
e2_sf = -sum(chen_E_sf(:,2)) / log(lines_small_DIP2010);
w1_sf = (1 - e1_sf) / (2 - e1_sf - e2_sf);
w2_sf = (1 - e2_sf) / (2 - e1_sf - e2_sf);
chen_w_sf = [w1_sf;w2_sf];

chen_H_sf(:,1) = chen_B_sf(:,1);
for i = 2:3
chen_H_sf(:,i) = chen_sf(:,i) * chen_w_sf(i-1,1);
end
G = chen_H_sf(:,2) + chen_H_sf(:,3);