 info = imfinfo('200601011201050001.JPG');
% contrast the contrast of all the grayscale cysts targets relative to the background
grayImage = imread('200601011201050001.JPG');
imshow(grayImage);
roi = drawrectangle;
row1 = roi.Position(2);
row2 = roi.Position(2) + roi.Position(4);
col1 = roi.Position(1);
col2 = roi.Position(1) + roi.Position(3);
% Get the mean in that box
meanGL = mean2(grayImage(row1:row2, col1:col2))
% Compute area
height1 = (row2-row1 + 1);
width1 = (col2 - col1 + 1);
area = height1 * width1;
% Make a box twice as big.
height2 = sqrt(2) * height1;
width2 = sqrt(2) * width1;
% Get the midpoint
middleRow = mean([row1, row2]);
middleCol = mean([col1, col2]);
xline(middleCol, 'Color', 'r', 'LineWidth', 2);
yline(middleRow, 'Color', 'r', 'LineWidth', 2);
row1 = round(middleRow - height2/2);
row2 = round(middleRow + height2/2);
col1 = round(middleCol - width2/2);
col2 = round(middleCol + width2/2);
hold on
rectangle('Position', [col1, row1, width2, height2], 'EdgeColor', 'y', 'LineWidth', 2);
% Get the mean in that box
meanGL = mean2(grayImage(row1:row2, col1:col2))
 
%M  MATLAB program on Spatial Resolution

I = imread('200601011201050001.JPG'); %Read image information
subplot(231);
I1 = rgb2gray(I);%convert Color Image to Grayscale Image
imshow(I1);
title('Original image'); %Output this image
I2 = imresize(I1,05); %for resizing this fuctioncan be used

%I2 = I1(1:2:end,1:2:end); % The row and column directions are sampled
subplot(232);
imshow(I2);
title('sample image 2)');

I3 = I1(1:4:end,1:4:end);
subplot(233);
imshow(I3);
title('Sample image 3');

I4 = I1(1:8:end,1:8:end);
subplot(234);
imshow(I4);
title('Sample image 4');


I5 = I1(1:8:end,1:8:end);
subplot(235);
imshow(I5);
title('Sample image 5');

I6 = I1(1:8:end,1:8:end);
subplot(236);
imshow(I6);
title('Sample image 6');

z = imread('200601011201050001.JPG');
z=im2gray(z);
z2=imresize(z,0.75);
figure
imshow(z2);
title('Original Image 7');

I7=imresize(z2,[512,512],"nearest");
figure(2)
imshow(I7);
title('Zoomed Image (512*512), using nearest interpolation');

I8=imresize(z2,[512,512],'bilinear');
figure(3)
imshow(I8);
title('Zoomed Image (512*512), using Bilinear interpolation');

I9=imresize(z2,[512,512],'bicubic');
figure(4)
imshow(I9);
title('Zoomed Image (512*512), using Bicubic interpolation');

% Intensity Resolution
% MATLAB program on Intensity Resolution (Quantization Levels)

I = imread('200601011201050001.JPG');
Igray = rgb2gray(I);
montage({I, Igray});
title('Original Image                             Grayscale Image(8 bit)');
[r, c, s] = size(Igray); %% Get Rows, Columns and Plane Number
m = max(max(max(Igray))); %% Get maximum value of pixel in Image
b = [ 1 2 3 4 5 6 7 8 ]; %% divide 8 bit image by different levels 
                         %%e.g. for 8, it is 2^8 = 256 hence will give 1 bit image
figure
for dd = 1 : length(b)
    d = 2^dd; %% since total number of bits is equal to 2^dd
    z = round(Igray/d); %% divide each pixel by 2^dd
    subplot(2, 4, dd) ;
    title(['Image using bit ',num2str(abs(dd-9))]);
    hold  on
    imshow ( z * d );        
end

 %calculating contrast of the Image without taking 
 I = imread('200601011201050001.JPG');
 I10 = rgb2gray(I);%convert Color Image to Grayscale Image
 image_contrast = max(I(:)) - min(I(:));