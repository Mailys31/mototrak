function plot_mean_peak(folder)

D = dir('C:\Users\ethie\OneDrive\Documents\temp_data\170\');

D.name

numfich = size(D,1);

for i = 1:numfich
   
   
load(D,name(i));
mean_angle = trial_table.Properties.CustomProperties.mean_peak;
    
 
    
  % figure
  % plot(
    
  
   % 
end

%file = D.name
%data = load(strcat(D,D.name(i)));