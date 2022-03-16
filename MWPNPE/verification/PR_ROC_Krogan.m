%%

load('Krogan_score_T.mat');

for i = 3:15
    [~, ~,~ , ~, AUC(i)] = prec_rec(Krogan_score_T(:,i), Krogan_score_T(:,2));
end

prec_rec(Krogan_score_T(:,15),Krogan_score_T(:,2));
prec_rec(Krogan_score_T(:,3),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,4),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,5),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,6),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,7),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,8),Krogan_score_T(:,2),'holdFigure',1);
% prec_rec(k(:,1),k(:,2),'plotPR',0,'holdFigure',1);
legend('baseline','MWPNPE(AUC=0.7450)','SC(AUC=0.6167)','EC(AUC=0.6167)','DC(AUC=0.6583)','BC(AUC=0.6248)','CC(AUC=0.6114)','NC(AUC=0.5088)','Location','SouthEast');


prec_rec(Krogan_score_T(:,15),Krogan_score_T(:,2));
prec_rec(Krogan_score_T(:,9),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,10),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,11),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,12),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,13),Krogan_score_T(:,2),'holdFigure',1);
prec_rec(Krogan_score_T(:,14),Krogan_score_T(:,2),'holdFigure',1);
legend('baseline','MWPNPE(AUC=0.7450)','IC(AUC=0.6573)','PeC(AUC=0.6114)','LAC(AUC=0.6573)','CoEWC(AUC=0.6505)','POEM(AUC=0.4843)','RWHN(AUC=0.7202)','Location','SouthEast');
