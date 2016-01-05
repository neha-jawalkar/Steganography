function [ unscrambled_image ] = unscramble( scrambled_image, secret_key )
%SCRAMBLE Summary of this function goes here
%   Detailed explanation goes here
index_decider = 0;
index = 0;
unscrambled_image = repmat(scrambled_image,2,1);
[rows, columns, num_colour_channels] = size(scrambled_image);
for t = 1:secret_key
    for i = 1:rows
        for j=1:columns
            unscrambled_row = mod(i-j,rows) + 1;
            unscrambled_column = mod(-i + 2*j -1, columns) + 1;
            unscrambled_image(index+unscrambled_row,unscrambled_column) = unscrambled_image(mod(index_decider+1,2)*rows+i, j);
        end
    end
    index_decider = mod(index_decider + 1,2);
    index = index_decider*rows;
end
index = mod(index_decider+1,2)*rows;       
unscrambled_image = unscrambled_image(index+1:index+rows,1:columns);
end

