%% gene

filename = 'data\expression.txt';	
fileID = fopen(filename);
expression = textscan(fileID,'%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','Delimiter','	');  	   
fclose(fileID);
expression_name = expression{1,1};	
expression_value = xlsread('data\expression.xlsx','B2:AK6777');

pl_ex = zeros(lines_small_DIP2010,36);
for i = 1 : lines_small_DIP2010
for j = 1 : length(expression_value)
	if strcmp(pailie_DIP2010(i,1),expression_name(j,1))==1	
	pl_ex(i,:) = expression_value(j,:);
	break;
	end
end
end
ave_ex = mean(pl_ex,2); 
ave_ex_all = mean(ave_ex,1); 

ave_p_ex = zeros(lines_small_DIP2010,36);
for i = 1 : lines_small_DIP2010
    for j =1 : 36
        ave_p_ex(i,j) = pl_ex(i,j) - ave_ex(i,1);       
    end
end    

square_ex = ave_p_ex .* ave_p_ex;                      
sum_square_ex = sqrt(sum(square_ex,2));          

EX = zeros(lines_small_DIP2010,lines_small_DIP2010);
for i = 1 : lines_small_DIP2010
    for j = 1 : lines_small_DIP2010
        if LJJZ_DIP2010(i,j) == 1
            for k = 1 : 36
                EX(i,j) = ave_p_ex(i,k) * ave_p_ex(j,k) + EX(i,j);
            end
        end
    end
end

PCC = zeros(lines_small_DIP2010,lines_small_DIP2010);
for i = 1:lines_small_DIP2010
    for j = 1: lines_small_DIP2010
        if LJJZ_DIP2010(i,j) == 1
            if (sum_square_ex(i,1)~=0)&&(sum_square_ex(j,1)~=0)
                PCC(i,j) = EX(i,j)/(sum_square_ex(i,1) * sum_square_ex(j,1));
            else
                PCC(i,j) = 0;
            end
        end
    end
end
PCC = PCC./35;  % PCC

F_du = zeros(lines_small_DIP2010,1);
for i = 1 : lines_small_DIP2010
    a = (ave_ex(i,1) - (sum_square_ex(i,1)^3));
    b = (ave_ex(i,1) + (sum_square_ex(i,1)^3));
    for j =1 : 36
        if (a < pl_ex(i,j)) && ( pl_ex(i,j) < b)
            F_du(i) = 1 + F_du(i);
        end
    end
    if sum_square_ex(i,1) == 0
        F_du(i) = 0;
    end
end    
