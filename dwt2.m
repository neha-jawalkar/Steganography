function [ transformed_image ] = dwt2( input_image )
%DWT2 Summary of this function goes here
%   Detailed explanation goes here
rows = size(input_image,1);
columns = size(input_image,2);
transformation_matrix = zeros(rows,columns);
for i=1:rows/2
       transformation_matrix(i,2*i-1) = 1;
       transformation_matrix(i,2*i) = 1;
       transformation_matrix(rows/2+i,2*i-1) = -1;
       transformation_matrix(rows/2+i,2*i) = 1;
end
transformation_matrix = transformation_matrix./sqrt(2);
transformed_image = double(transformation_matrix)*double(input_image)*double(transformation_matrix');
max_value = max(max(transformed_image));
transformed_image = 255*transformed_image/max_value;
end