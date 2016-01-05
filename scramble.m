function [ scrambled_image ] = scramble( square_image, secret_key )
%SCRAMBLE Summary of this function goes here
%   Detailed explanation goes here
index_decider = 0;
index = 0;
scrambled_image = repmat(square_image,2,1);
[rows, columns, ~] = size(square_image);
for t = 1:secret_key
    for i = 1:rows
        for j=1:columns
            scrambled_row = mod(2*(i-1) + j-1,rows) + 1;
            scrambled_column = mod(i + j -2, columns) + 1;
            scrambled_image(index+scrambled_row,scrambled_column) = scrambled_image(mod(index_decider+1,2)*rows+i, j);
        end
    end
    index_decider = mod(index_decider + 1,2);
    index = index_decider*rows;
end
index = mod(index_decider+1,2)*rows;       
scrambled_image = scrambled_image(index+1:index+rows,1:columns);
end

