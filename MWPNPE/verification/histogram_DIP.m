%% %=====Top 1%---------------
data = [24,24,22,24,24,32,24,39,41,40,43,41,42,47];
b = bar(data);
set(b,'LineWidth',0.8);  
ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,55],'ytick',[0:5:55]);
xtextp=xt+0.25;               
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.2,data(ii)+1.5,str);
end
t = text(5,52,'Top 1%(Top 51)');
ylabel('The number of essential proteins');

%% %=====Top 5%---------------
data = [96,96,101,95,104,159,102,173,159,176,182,188,199,202];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,250],'ytick',[0:25:250]);
xtextp=xt+0.2;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.35,data(ii)+7,str);
end
t = text(5,235,'Top 5%(Top 255)');
ylabel('The number of essential proteins');


%% %=====Top 10%---------------
data = [195,194,206,182,193,281,210,293,284,305,310,331,350,350];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,400],'ytick',[0:50:400]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+11,str);
end
t = text(5,375,'Top 10%(Top 510)');
ylabel('The number of essential proteins');


%% %=====Top 15%---------------
data = [279,279,320,271,284,373,316,372,393,390,406,445,457,456];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,550],'ytick',[0:50:550]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt))-2;
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+15,str);
end
t = text(5,520,'Top 15%(Top 764)');
ylabel('The number of essential proteins');


%% %=====Top 20%---------------
data = [377,377,413,361,364,464,406,438,473,477,486,547,541,542];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);
set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,650],'ytick',[0:50:650]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+17,str);
end
t = text(5,625,'Top 20%(Top 1019)');
ylabel('The number of essential proteins');

 
%% %=====Top 25%---------------
data = [467,467,502,433,448,544,504,494,553,552,553,634,605,615];
b = bar(data);
set(b,'LineWidth',0.8);  

ch = get(b,'children');
set(ch,'FaceVertexCData',[4;2;3;1;5;6]);

set(gca,'XTickLabel',{'SC','EC','DC','BC','CC','NC','IC','Pec','LAC','CoEWC','POEM','ION','TEGS','MWPNPE'});
xtb = get(gca,'XTickLabel');
xt = get(gca,'XTick'); 
yt = get(gca,'YTick'); 
set(gca,'ylim',[0,700],'ytick',[0:50:700]);
xtextp=xt+0.25;                     
ytextp=-0.1*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',30,'fontsize',9); 
set(gca,'xticklabel','');
for ii=1:length(data)
    str=sprintf('%d',data(ii));
    text(ii-0.4,data(ii)+18,str);
end
t = text(5,666,'Top 25%(Top 1274)');
ylabel('The number of essential proteins');
