
%
clc
clear all
close all
%

%MATLAB code
t1=cputime;
N=64;
I1 = imread('1.pgm'); %read the image  
imshow (I1)
% I = rgb2gray(I);%convert the RGB to gray scale image
I1=imresize(I1,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w1i(n) = I1(i,j);
n=n+1;
end
end




%MATLAB code
I2 = imread('2.pgm'); %read the image  
imshow (I2)
% I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I2,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w2i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
I3 = imread('3.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I3,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w3i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
I4 = imread('4.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I4,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w4i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
I5 = imread('5.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I5,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w5i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
I6 = imread('6.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I6,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w6i(n) = I(i,j);
n=n+1;
end
end


%MATLAB code
I7 = imread('7.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I7,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w7i(n) = I(i,j);
n=n+1;
end
end


%MATLAB code
I9 = imread('8.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I9,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w8i(n) = I(i,j);
n=n+1;
end
end


%MATLAB code
I10 = imread('10.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I9,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w8i(n) = I(i,j);
n=n+1;
end
end


%MATLAB code
I8 = imread('10.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I8,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w8i(n) = I(i,j);
n=n+1;
end
end




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
X=[transpose(w1i) transpose(w2i) transpose(w3i) transpose(w4i)  transpose(w5i)  transpose(w6i)  transpose(w7i)  transpose(w8i)];
X=double(X);

%%%%%%%%%%%%%%%%%%%%%
N=64;
pathImm = './one faces/';
Imgs = dir([pathImm '*.jpg']);
numImgs = length(Imgs);
imName = [pathImm Imgs(5).name];
%Imm = rgb2gray(imread(imName));
I = imread(imName);


%MATLAB code
% I = imread('10.pgm'); %read the image  to be test

%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
y(n) = I(i,j);
n=n+1;
end
end
y=double(y);

%%%%%%%%%%%%%%%%%%%%%




yhat=X*inv((transpose(X)*X))*transpose(X)*transpose(y);
error= abs(abs(y)-transpose(abs(yhat)));
e1=sum(sum(error));
Y=sum(sum(y));
e=e1/Y
%e=ceil(e);
t2=cputime;
time=t2-t1

save  results.mat e;

subplot(3,3,1), imshow(I1)
subplot(3,3,2), imshow(I2)
subplot(3,3,3), imshow(I3)
subplot(3,3,4), imshow(I4)

subplot(3,3,5), imshow(I5)
subplot(3,3,6), imshow(I6)
subplot(3,3,7), imshow(I7)
subplot(3,3,8), imshow(I8)
subplot(3,3,9), imshow(I9)
% figure();title('Training image(same Person)')
