function [ scrambled_image ] = unblend( encoded_image, cover_image, alpha )
%UNBLEND Summary of this function goes here
%   Detailed explanation goes here
scrambled_image = (double(encoded_image) - alpha*double(cover_image))/(1-alpha);
end

