%generate_ode_part1

clear

input_file = '/public/home/ciac_liwb/metabolism/result/network_gem_ode.csv';



gem_network = textread(input_file, '%s', 'delimiter', '\t');
gem_network = reshape(gem_network,4,length(gem_network)/4);
gem_network = gem_network';

load gem_name
n = size(gem_name,1);

network_matrix = zeros(n,n);
lx_tag_matrix = zeros(n,n);

for i = 1 : size(gem_network,1)
    str1 = gem_network{i,1};
    str2 = gem_network{i,2};
    str3 = gem_network{i,3};
    str4 = gem_network{i,4};
    
    num1 = 0;
    for ii = 1 : size(gem_name,1) 
        if strcmp(gem_name{ii},str1)
            num1 = ii;
            break;
        end
    end
    
    num2 = 0;
    for ii = 1 : size(gem_name,1)
        if strcmp(gem_name{ii},str2)
            num2 = ii;
            break;
        end
    end
    
    num3 = 0;
    if strcmp('p',str3)
        num3 = 1;
    end
    if strcmp('n',str3)
        num3 = -1;
    end
    network_matrix(num1,num2) = num3;
    
    if strcmp('m2g',str4) || strcmp('m2e',str4)
        lx_tag_matrix(num1,num2) = 1;
    end
    
end

ge_n =  length(genes) + length(enzymes);
fid = fopen('ode_part1.m','w');

fprintf(fid,'lx=param.lx;\n');
fprintf(fid,'A=param.A;\n');
fprintf(fid,'D=param.D;\n');
fprintf(fid,'S=param.S;\n');
fprintf(fid,'n=param.n;\n');
fprintf(fid,'gamma=param.gamma;\n');


for i = 1 : ge_n
    fprintf(fid,'dx(%d)=',i);
    fprintf(fid,'A(%d)',i);
    for j=1:length(gem_name)
       
       
        if abs(network_matrix(j,i)) ==  1
            
            
            
            S = ['S(' num2str(j) ',' num2str(i) ')'];
            n = ['n(' num2str(j) ',' num2str(i) ')'];
            X = ['x(' num2str(j)  ')'];
            
            
            if lx_tag_matrix(j,i)
                X =  ['(x(' num2str(j)  ')' '/' 'lx(' num2str(j) '))'];
            end
            
            
            
            if strcmp(gem_name{j},'ATP') && strcmp(gem_name{i},'AMPK')
                X = ['((x(' num2str(j)  ')' '/' 'lx(' num2str(j) '))' '/' '(x(' num2str(j-2)  ')' '/' 'lx(' num2str(j-2) ')))'];  %ATP and AMP
            end
            
            if strcmp(gem_name{j},'ATP') && strcmp(gem_name{i},'PDK')
                X = ['((x(' num2str(j)  ')' '/' 'lx(' num2str(j) '))' '/' '(x(' num2str(j-1)  ')' '/' 'lx(' num2str(j-1) ')))'];  %ATP and AMP
            end
            
            
            fprintf(fid,'*(');
            fprintf(fid,[S '^' n '/' '(' S '^' n '+' X '^' n ')']);
            fprintf(fid,'+');
            fprintf(fid,'gamma(%d,%d)*',j,i);
            fprintf(fid,[X '^' n '/' '(' S '^' n '+' X '^' n ')']);
            fprintf(fid,')');
            
            
        end
    end
    fprintf(fid,'-');
    fprintf(fid,'D(%d)*x(%d)',i,i);
    fprintf(fid,';\n');
end


fclose(fid);
save('network_matrix.mat','network_matrix');






