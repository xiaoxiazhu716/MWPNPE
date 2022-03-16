%% 
load('Krogan_score_T.mat');

sum_TT_score=zeros(400,size(Krogan_score_T,2)-2);
for i=3:size(Krogan_score_T,2)
    B11=sortrows(Krogan_score_T,i,'descend');
    for j=1:400
        sum_TT_score(j,i)=sum(B11(1:j,2),1);
    end
end
B1 = zeros(400,1);
for i = 1 :400
    B1(i,1)=i;
end
%%
vp=B1;
vp_ess=sum_TT_score;

% plot(vp,vp_ess(:,3),'c','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,4),'b','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,5),'k','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,6),'m','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,7),'g','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,8),'y','Linewidth', 1.5);
% hold on;
% plot(vp,vp_ess(:,15),'r','Linewidth', 2);
% hold on;
% legend('SC','EC','DC','BC','CC','NC','MWPNPE','Location','NorthWest'); 

plot(vp,vp_ess(:,9),'c','Linewidth', 1.2);
hold on;
plot(vp,vp_ess(:,10),'b','Linewidth', 1.2);
hold on;
plot(vp,vp_ess(:,11),'k','Linewidth', 1.2);
hold on;
plot(vp,vp_ess(:,12),'m','Linewidth', 1.2);
hold on;
plot(vp,vp_ess(:,13),'g','Linewidth', 1.2);
hold on;
plot(vp,vp_ess(:,14),'y','Linewidth', 1.5);
hold on;
plot(vp,vp_ess(:,15),'r','Linewidth', 2);
hold on;
legend('IC','PEC','LAC','CoEWC','POEM','RWHN','MWPNPE','Location','NorthWest'); 

ylabel('The number of essential proteins');
xlabel({'The number of top ranked proteins'});
    