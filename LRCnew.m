%% Project Code : face recognition using Linear regression Classification model%%
%Course: Image Processing 
%Submitted by : Mousumi Deb
%
clc
clear all
close all
%
N=64;
pathImm = 'E:/image processing matlab code/att_faces/s1/';
Imgs = dir([pathImm '*.pgm']);
numImgs = length(Imgs);
imName = [pathImm Imgs(1).name];
%Imm = rgb2gray(imread(imName));
Imm = imread(imName);

for ii=1:numImgs
    imName = [pathImm Imgs(ii).name];
    %Imm = rgb2gray(imread(imName));
    Imm = imread(imName);
    I=imresize(Imm,[N N],'bilinear');
    n=1;
    for i = 1:N
        for j = 1:N
%           w1i(n) = I(i,j);
         w1i(n) = I(i,j);
         w2i(n) = I(i,j);
         w3i(n) = I(i,j);
         w4i(n) = I(i,j);
         w5i(n) = I(i,j);
         w6i(n) = I(i,j);
         w7i(n) = I(i,j);
       n=n+1;  
        end
    end


end
% X=[transpose(w1i) transpose(w2i) transpose(w3i) transpose(w4i)  transpose(w5i)  transpose(w6i)  transpose(w7i)  transpose(w8i)];
% X=double(X);
%           
          