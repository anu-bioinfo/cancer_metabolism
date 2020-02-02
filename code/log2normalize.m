function output_data = log2normalize(input_data)

tmp_data = input_data;
tmp_data(input_data == 0) = 1;

% disp(tmp_data);
% pause;

log2_data = log2(tmp_data);

log2_mean = mean(log2_data,2);

std_d = std(log2_data,0,2);

output_data = (log2_data - log2_mean) ./ std_d;


end