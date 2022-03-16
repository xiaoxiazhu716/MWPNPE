%% %=====Top 1%---------------
data = [0,0,7,9,11,11,16,15,0,16,17,17,18];
b = bar(data);
set(b,'LineWidth',0.8); 
ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,20],'ytick',[0:2:20]);
xtextp=xt+0.25;               
ytextp=-0.1*yt(2)*ones(1,length(xt))-0.1;
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.2,data(ii)+0.5,str);
end
t = text(5,19,'Top 1%(Top 19)');
ylabel('The number of essential proteins');

%% %=====Top 5%---------------
data = [17,38,36,40,45,51,55,69,22,69,74,73,83];
b = bar(data);
set(b,'LineWidth',0.8);  %¼Ó´ÖÏß¿í
ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,90],'ytick',[0:10:90]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.3,data(ii)+2.5,str);
end
t = text(5,85,'Top 5%(Top 93)');
ylabel('The number of essential proteins');


%% %=====Top 10%---------------
data = [87,94,101,85,93,123,119,142,102,136,148,150,156];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,180],'ytick',[0:20:180]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+5,str);
end
t = text(5,175,'Top 10%(Top 186)');
ylabel('The number of essential proteins');

%% %=====Top 15%---------------
data = [130,134,158,122,135,170,163,193,167,190,199,207,221];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,250],'ytick',[0:25:250]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt))+1;
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+7,str);
end
t = text(5,240,'Top 15%(Top 278)');
ylabel('The number of essential proteins');

%% %=====Top 20%---------------
data = [190,166,222,162,180,213,213,238,221,237,249,263,279];
b = bar(data);
set(b,'LineWidth',0.8);  
ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,300],'ytick',[0:30:300]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+8,str);
end
t = text(5,280,'Top 20%(Top 371)');
ylabel('The number of essential proteins');


%% %=====Top 25%---------------
data = [240,209,264,201,221,259,259,285,273,275,296,312,323];
b = bar(data);
set(b,'LineWidth',0.8);  
ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,350],'ytick',[0:50:350]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+10,str);
end
t = text(5,330,'Top 25%(Top 464)');
ylabel('The number of essential proteins');
