%% weighting

sum_row_weight=zeros(lines_small_DIP2010,36); 
gama_y=0.2;
temp_a=zeros(lines_small_DIP2010,lines_small_DIP2010);
temp_b=zeros(lines_small_DIP2010,lines_small_DIP2010);

LJJZ_network{1,1}=LJJZ_DIP2010*gama_y+LJJZ_network{1,1};
for i=1:36
    if i>1
        temp_a=LJJZ_network{1,i-1};
        LJJZ_network{1,i}=temp_a*gama_y+LJJZ_network{1,i};
    end
end

for i=1:36
    sum_row_weight(:,i)=sum(LJJZ_network{1,i},2);
    LJJZ_network{1,i}=LJJZ_network{1,i}./sum_row_weight(:,i);
end

for j=1: lines_small_DIP2010
  for  k = 1 : lines_small_DIP2010                           
      if LJJZ_DIP2010(j,k) > LJJZ_network{1,1}(j,k) 
         LJJZ_network{1,1}(j,k) = LJJZ_DIP2010(j,k);          
      end
  end
end   

for i=2:36
   for j=1:lines_small_DIP2010
      for  k=1:lines_small_DIP2010                           
          if LJJZ_network{1,i-1}(j,k)>LJJZ_network{1,i}(j,k)  
             LJJZ_network{1,i}(j,k)=LJJZ_network{1,i-1}(j,k);          
          end
      end
   end   
end
w_max=LJJZ_network{1,36};
temp=sum(w_max,2);
w_weight=w_max./temp;
