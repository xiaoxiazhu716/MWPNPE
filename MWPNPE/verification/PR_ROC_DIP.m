%%
load('DIP_score_T.mat');


for i = 1:14
    [~, ~,~ , ~, AUC(i)] = prec_rec(DIP_score_T(:,i), DIP_score_T(:,16));
end

prec_rec(DIP_score_T(:,15),DIP_score_T(:,2));
prec_rec(DIP_score_T(:,3),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,4),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,5),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,6),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,7),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,8),DIP_score_T(:,2),'holdFigure',1);
% prec_rec(k(:,1),k(:,2),'plotPR',0,'holdFigure',1);
legend('baseline','MWPNPE(AUC=0.7489)','SC(AUC=0.6384)','EC(AUC=0.6384)','DC(AUC=0.6704)','BC(AUC=0.6250)','CC(AUC=0.6291)','NC(AUC=0.6879)','Location','SouthEast');


prec_rec(DIP_score_T(:,15),DIP_score_T(:,2));
prec_rec(DIP_score_T(:,9),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,10),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,11),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,12),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,13),DIP_score_T(:,2),'holdFigure',1);
prec_rec(DIP_score_T(:,14),DIP_score_T(:,2),'holdFigure',1);
% prec_rec(k(:,1),k(:,2),'plotPR',0,'holdFigure',1);
legend('baseline','MWPNPE(AUC=0.7489)','IC(AUC=0.6657)','PeC(AUC=0.6329)','LAC(AUC=0.6816)','CoEWC(AUC=0.6513)','POEM(AUC=0.6662)','TEGS(AUC=0.7386)','Location','SouthEast');

