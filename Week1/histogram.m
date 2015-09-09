function [h] = histogram(img)
%HISTOGRAM Calculates the gray scale histogram for the image. It assumes
%that it is 256 (2^8) graylevels in the image
%
%   @input
%   img : Input image
%
%   @output
%   h   : Image histogram

% Finding image size
[n,m] = size(img);

% Allocating variable
h = zeros(1,2^8);   % Histogrammet

% Finding the histogram by summation of how many pixles there is of
% each graylevel. This can be done faster, but this is a fairly intuitive
% apporach if you ask me ;)
for i = 1:2^8
    h(i) = sum(sum(uint8(img == i-1)));
end