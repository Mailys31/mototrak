function mean_peak = plot_mean_peak()

% D = dir('C:\Users\ethie\OneDrive\Documents\temp_data\170\');

folder = uigetdir('C:\Users\ethie\OneDrive\Documents\', 'Choose Rat');
[filepath,name,ext] = fileparts(folder);

D = dir([folder '\*.mat']);

numfich = size(D,1);

mean_peak = nan(numfich,1);

for i = 1:numfich
    load(fullfile(D(i).folder,D(i).name));
    
    mean_peak(i) = trial_table.Properties.CustomProperties.mean_peak;
end

figure
plot (mean_peak)
title(name)
xlabel('Number of sessions') 
ylabel('Mean peak angle (deg)')


% 
% %T.Properties.RowNames = T.name;
% %T.name = [];
% B=T(:,1)
% load(D.name(i));
% %mean_angle = trial_table.Properties.CustomProperties.mean_peak;
%     
%  
%     
%   % figure
%   % plot(
%     
%   
%    % 
% end

%file = D.name
%data = load(strcat(D,D.name(i)));