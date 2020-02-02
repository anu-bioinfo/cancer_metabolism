function output_str_cell_cell2   =   analyze_tcga_barcode2(input_str_cell)

tmp_str_cell_cell = [];

idx = strfind(input_str_cell,'-');

for i = 1:length(idx)
    
     
    for ii = 1: length(idx{i})+1
        if ii == 1
            start_num = 1;
        else
            start_num = idx{i}(ii-1) + 1;
        end
        if ii == length(idx{i})+1
            end_num = length(input_str_cell{i});
        else
            end_num = idx{i}(ii) - 1;
        end
        tmp_str_cell_cell{i,ii} = input_str_cell{i}(start_num:end_num);
    end
end

for i = 1: size(tmp_str_cell_cell,1)
    for ii = 1: size(tmp_str_cell_cell,2)
        if ii < 4
            output_str_cell_cell{i,ii}   =  tmp_str_cell_cell{i,ii};
        elseif ii == 4
            output_str_cell_cell{i,ii}   =  tmp_str_cell_cell{i,ii}(1:2);
            output_str_cell_cell{i,ii+1} =  tmp_str_cell_cell{i,ii}(3);
        elseif ii == 5
            output_str_cell_cell{i,ii+1} =  tmp_str_cell_cell{i,ii}(1:2);
            output_str_cell_cell{i,ii+2} =  tmp_str_cell_cell{i,ii}(3);
        elseif ii > 5
            output_str_cell_cell{i,ii+2} =  tmp_str_cell_cell{i,ii};
        end
    end
end

tmp_str_cell_cell2 = [];
for i = 1: size(output_str_cell_cell,2)
    for ii = 1: size(output_str_cell_cell,1)
        output_str_cell_cell2{i}{ii} = output_str_cell_cell{ii,i};
    end
end





