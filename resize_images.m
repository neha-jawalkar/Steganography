function [ processed_cover, processed_secret ] = resize_images( cover_image, secret_image )
%RESIZE_IMAGE Summary of this function goes here
%   Detailed explanation goes here
[rows, columns, num_colour_channels] = size(cover_image);
side = 0;
if rows < columns
    side = rows;
else
    side = columns;
end
processed_cover = cover_image(1:side,1:side);
processed_secret = secret_image(1:side,1:side);
end

