function [ blended_output ] = blend( input_a, input_b, alpha )
%BLEND Summary of this function goes here
%   Detailed explanation goes here
blended_output = alpha*double(input_a) + (1-alpha)*double(input_b);
end

