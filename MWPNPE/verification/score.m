%%
% aaa_score_T=zeros(3672,1);
aaa_TT_score=zeros(5,size(aaa_score_T,2));
for i=3:size(aaa_score_T,2) 
    A11=sortrows(aaa_score_T,i,'descend');
    aaa_TT_score(1,i)=sum(A11(1:51,2),1);
    aaa_TT_score(2,i)=sum(A11(1:255,2),1);
    aaa_TT_score(3,i)=sum(A11(1:509,2),1);
    aaa_TT_score(4,i)=sum(A11(1:764,2),1);
    aaa_TT_score(5,i)=sum(A11(1:1019,2),1);
    aaa_TT_score(6,i)=sum(A11(1:1274,2),1);
    aaa_TT_score(7,i)=sum(A11(1:50,2),1);
    aaa_TT_score(8,i)=sum(A11(1:100,2),1);
    aaa_TT_score(9,i)=sum(A11(1:200,2),1);
    aaa_TT_score(10,i)=sum(A11(1:300,2),1);
    aaa_TT_score(11,i)=sum(A11(1:400,2),1);
    aaa_TT_score(12,i)=sum(A11(1:500,2),1);
    aaa_TT_score(13,i)=sum(A11(1:600,2),1);
    aaa_TT_score(14,i)=sum(A11(1:19,2),1);
    aaa_TT_score(15,i)=sum(A11(1:93,2),1);
    aaa_TT_score(16,i)=sum(A11(1:186,2),1);
    aaa_TT_score(17,i)=sum(A11(1:278,2),1);
    aaa_TT_score(18,i)=sum(A11(1:371,2),1);
    aaa_TT_score(19,i)=sum(A11(1:464,2),1);  
    
    aaa_TT_score(20,i)=sum(A11(1:37,2),1);
    aaa_TT_score(21,i)=sum(A11(1:184,2),1);
    aaa_TT_score(22,i)=sum(A11(1:367,2),1);
    aaa_TT_score(23,i)=sum(A11(1:551,2),1);
    aaa_TT_score(24,i)=sum(A11(1:734,2),1);
    aaa_TT_score(25,i)=sum(A11(1:918,2),1);   
end

 a=aaa_TT_score';