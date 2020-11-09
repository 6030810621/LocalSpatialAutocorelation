clear
clc
format short G
% Contiguity Matrix
cm =[0 1 1 1 1 1 1 1 
    1 0 1 0 0 0 0 0  
    1 1 0 1 0 0 0 0 
    1 1 1 0 1 0 0 0   
    1 0 0 1 0 1 0 0 
    1 0 0 0 1 0 1 1
    1 0 0 0 0 1 0 1
    1 1 0 0 0 1 1 0 ];

% Sum of Contiguity Matrix Rows
s = sum(cm,2);

% Row Standardized Spatial Weights Matrix
w = cm./s;
x = [5426       %samsennai
    2318        %thanon phayathai
    3628        %Makkasan
    17783       %Dindeang
    9624        %Ratchadapisek
    7355        %Jomphon
    4885        %Jatujak
    7884];      %Phayathai

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
z = zscore(x,1);

% LISA
I = z.*(w*z);