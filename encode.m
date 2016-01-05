function [ stego_image ] = encode(secret_image, cover_image, secret_key,alpha )
%ENCODE Summary of this function goes here
%   Detailed explanation goes here
scrambled_image = scramble(secret_image, secret_key);
a = dwt2(scrambled_image);
b = dwt2(cover_image);
stego_image = idwt2(blend(b, a, alpha));
end

