function [ secret_image ] = decode( encoded_image, cover_image, secret_key,alpha )
%DECODE Summary of this function goes here
%   Detailed explanation goes here
subplot
a = dwt2(encoded_image);
b = dwt2(cover_image);
scrambled_image = idwt2(unblend(a,b,alpha));
secret_image = unscramble(scrambled_image, secret_key);
end

