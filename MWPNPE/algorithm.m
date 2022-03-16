%%  Construct adjacency matrix
% filename = 'data\DIP2010.txt';%DIP.
% fileID = fopen(filename);
% Data_DIP2010= textscan(fileID,'%s %s','Delimiter','	');
% fclose(fileID);

filename = 'data\gavin.txt'; % gavin.
fileID = fopen(filename);
Data_DIP2010= textscan(fileID,'%s %s','Delimiter','	');
fclose(fileID);

% filename = 'data\krogan.txt'; % krogan
% fileID = fopen(filename);
% Data_DIP2010= textscan(fileID,'%s %s','Delimiter',' '); 
% fclose(fileID);

Data_first_DIP2010 = Data_DIP2010{1,1};
Data_second_DIP2010 =Data_DIP2010{1,2};
TWO_DIP2010=[Data_first_DIP2010 ;Data_second_DIP2010];
lines_mid_DIP2010 = size(Data_first_DIP2010,1);
label=grp2idx(TWO_DIP2010);
RE_NUM_DIP2010=reshape(label,[lines_mid_DIP2010,2]);
 
pailie_DIP2010=unique(TWO_DIP2010,'stable');
lines_small_DIP2010 = size(pailie_DIP2010,1);
lines_big_DIP2010 = size(label,1);
LJJZ_DIP2010=zeros(lines_small_DIP2010,lines_small_DIP2010);
for i=1:lines_mid_DIP2010
    LJJZ_DIP2010(RE_NUM_DIP2010(i,1),RE_NUM_DIP2010(i,2))=1;
    LJJZ_DIP2010(RE_NUM_DIP2010(i,2),RE_NUM_DIP2010(i,1))=1;
end
%% 
gene;

whole_network;
 
weighting;

features_bio;

features_top;

entropy_top;

entropy_bio;

score;
