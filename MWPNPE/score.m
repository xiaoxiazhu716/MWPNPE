%% score
alpha = 0.9;
Epsilon = 0.01;
score_T(:,1) = G;
for i = 2:20
    score_T(:,i) = alpha * H * score_T(:,i-1) + (1-alpha) * score_T(:,1);
    over = sqrt(sum((score_T(:,i)-score_T(:,i-1)).*(score_T(:,i)-score_T(:,i-1)))./lines_small_DIP2010);
    if over < Epsilon
        break;
    end
end        
data_proteins = cell(lines_small_DIP2010,1);
for q3=1:lines_small_DIP2010
    data_proteins(q3,1)=RE_NAME_DIP2010(RE_B_DIP2010_2(q3,1),1);
end
size(score_T,2);
Y_data=array2table(data_proteins,'VariableNames',{'data_proteins'});
T_data=array2table(RE_B_DIP2010_2(:,1),'VariableNames',{'id'});
X_data=array2table(RE_B_DIP2010_2(:,3),'VariableNames',{'judge'});
score_data=array2table(score_T(:,size(score_T,2)),'VariableNames',{'score'});
G_data=[Y_data,T_data,X_data,score_data]; 

%%
aaa_score_T=RE_B_DIP2010_2(:,1);
aaa_score_T(:,2)=RE_B_DIP2010_2(:,3);
xxx = size(score_T,2);
aaa_score_T(:,3)=score_T(:,xxx);
aaa_TT_score=zeros(5,size(aaa_score_T,2));
for i=3:size(aaa_score_T,2) 
    A11=sortrows(aaa_score_T,i,'descend');
    aaa_TT_score(2,i)=sum(A11(1:100,2),1);
    aaa_TT_score(3,i)=sum(A11(1:200,2),1);
    aaa_TT_score(4,i)=sum(A11(1:300,2),1);
    aaa_TT_score(5,i)=sum(A11(1:400,2),1);
    aaa_TT_score(6,i)=sum(A11(1:500,2),1);
    aaa_TT_score(7,i)=sum(A11(1:600,2),1);
end
