%% features_bio

filename1 = 'data\essential.txt';
fileID1 = fopen(filename1 );
ESS = textscan(fileID1,'%s');        
fclose(fileID1);
ess = ESS{1,1};
iess=size(ess,1);
essential = zeros(lines_small_DIP2010,1);
for q1=1:lines_small_DIP2010
    for j=1:iess
        if strcmp(pailie_DIP2010(q1,1),ess(j,1))==1
            essential(q1,1)= essential(q1,1)+1;
        end
    end
end

filename2 = 'data\orthology.txt';
fileID2 = fopen(filename2);
Data_orthology= textscan(fileID2,'%s %s','Delimiter','	');
fclose(fileID2);

Data_first_DIP2010_orthology = Data_orthology{1,1};
Data_second_DIP2010_orthology =Data_orthology{1,2};
TWO_orthology=[Data_first_DIP2010_orthology,Data_second_DIP2010_orthology];

orthology = char(TWO_orthology(:,2));
orthology = str2num(orthology);
biosignature = zeros(lines_small_DIP2010,1);
for j = 1:lines_small_DIP2010
    for i = 1:length(TWO_orthology)
        if strcmp(pailie_DIP2010(j,1),TWO_orthology(i,1))
            biosignature(j,1) = orthology(i,1);
        end
    end
end
