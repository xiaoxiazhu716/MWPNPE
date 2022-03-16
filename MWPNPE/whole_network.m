%% whole_network
n_con=0.68*36;
e_p_ex=zeros(lines_small_DIP2010,36);

for i=1:lines_small_DIP2010
   if (F_du(i)>=n_con) && (ave_ex(i)>ave_ex_all)
       e_p_ex(i,:)=ones(1,36);
       continue;
   end
   for j=1:36
       if (F_du(i)<n_con) && (ave_p_ex(i,j)>ave_ex(i,1))
           e_p_ex(i,j)=1;
       else
            e_p_ex(i,j)=0;
       end
   end
end

LJJZ_network=cell(1,36);

for i=1:36  
    LJJZ_network{1,i}=zeros(lines_small_DIP2010,lines_small_DIP2010);
    for j=1:lines_small_DIP2010
        for k=j+1:lines_small_DIP2010
            if j==k
                continue;
            end
            if e_p_ex(j,i)==1&&e_p_ex(k,i)==1
                LJJZ_network{1,i}(j,k)=1;
            else
                LJJZ_network{1,i}(j,k)=0;
            end
        end
    end
end

for i=1:36
    LJJZ_network{1,i}=(LJJZ_network{1,i})'+(LJJZ_network{1,i});
end

 aaa=sum(LJJZ_network{1,1},2);