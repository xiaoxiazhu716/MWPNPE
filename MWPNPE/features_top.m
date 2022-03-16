%%  features_top

[row,col]=find(LJJZ_DIP2010==1);
ZHI_DIP2010=[row,col];
RE_ZHI_DIP2010=sortrows(ZHI_DIP2010);
RE_ZHI_DIP2010(:,3)=zeros(lines_big_DIP2010,1);
RE_ZHI_DIP2010(:,3) = RE_ZHI_DIP2010(:,3) + 1;
for i=1:lines_big_DIP2010
    for j=i+1:lines_big_DIP2010
        if RE_ZHI_DIP2010(i,1)==RE_ZHI_DIP2010(j,1)
            if LJJZ_DIP2010(RE_ZHI_DIP2010(i,2),RE_ZHI_DIP2010(j,2))==1
                RE_ZHI_DIP2010(i,3)=RE_ZHI_DIP2010(i,3)+1;RE_ZHI_DIP2010(j,3)=RE_ZHI_DIP2010(j,3)+1;
            end
            if RE_ZHI_DIP2010(i,1)~=RE_ZHI_DIP2010(j,1)
                break;
            end
        end
    end
end

A1_DIP2010 = RE_ZHI_DIP2010(:,1);
A3_DIP2010 = RE_ZHI_DIP2010(:,3);
B1_DIP2010 = unique(A1_DIP2010);
B2_DIP2010 = arrayfun(@(a)sum(A3_DIP2010(A1_DIP2010==a)),B1_DIP2010);
B_DIP2010 = [B1_DIP2010 B2_DIP2010];
RE_B_DIP2010_2 = sortrows(B_DIP2010,1);
RE_B_DIP2010_2(:,3) = zeros(lines_small_DIP2010,1);
RE_B_DIP2010_2(:,3) = essential(:,1);
RE_B_DIP2010_2(:,4) = (sum(LJJZ_DIP2010))';
RE_B_DIP2010_2(:,5) = biosignature(:,1);
RE_B_DIP2010_2(:,6) = RE_B_DIP2010_2(:,2)./ RE_B_DIP2010_2(:,4);
RE_B_DIP2010_2(:,7) = LJJZ_DIP2010 * RE_B_DIP2010_2(:,4);
RE_B_DIP2010_2(:,8) = LJJZ_DIP2010 * RE_B_DIP2010_2(:,2);
RE_B_DIP2010_2(:,9) = RE_B_DIP2010_2(:,8)./RE_B_DIP2010_2(:,7);
RE_B_DIP2010_2(:,10) = RE_B_DIP2010_2(:,4) + RE_B_DIP2010_2(:,7);
RE_B_DIP2010_2(:,11) = RE_B_DIP2010_2(:,2) + RE_B_DIP2010_2(:,8); 
RE_B_DIP2010_2(:,12) = RE_B_DIP2010_2(:,11)./RE_B_DIP2010_2(:,10); 
RE_B_DIP2010_2(:,13) = RE_B_DIP2010_2(:,11)./RE_B_DIP2010_2(:,10)./RE_B_DIP2010_2(:,10); 
RE_B_DIP2010_2(:,14) = RE_B_DIP2010_2(:,11).*RE_B_DIP2010_2(:,11); 
RE_B_DIP2010_2(:,15) = RE_B_DIP2010_2(:,13)./RE_B_DIP2010_2(:,10)./RE_B_DIP2010_2(:,10); 
RE_B_DIP2010_2(:,16) = sum(PCC,2); 
RE_NAME_DIP2010=unique(TWO_DIP2010,'stable');






