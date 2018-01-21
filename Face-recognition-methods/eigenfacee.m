%MATLAB code
N=64;
I = imread('1.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');
 
n=1;
for i = 1:N
for j = 1:N
w1i(n) = I(i,j);
n=n+1;
end
end
 
%MATLAB code
%rgb = imread('2.pgm'); %read the image  
I = imread('2.pgm'); %read the image  
%I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');
 
n=1;
for i = 1:N
for j = 1:N
w2i(n) = I(i,j);
n=n+1;
end
end
 
%MATLAB code
I  = imread('3.pgm'); %read the image  
% I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');
 
n=1;
for i = 1:N
for j = 1:N
w3i(n) = I(i,j);
n=n+1;
end
end

Shi=(w1i+w2i+w3i)/3;%obtain the mean image 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Average image
 
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j);
k=k+1;
end
m=m+N;
k=1;
end
for i = 1:N
for j = 1:N;
M_image(i,j) = R(i,j);
end
end
 
imshow(M_image)
 
 
%%%%%%%%%%%%%%%%%%%%%%%%%
 
Phi1=w1i-Shi;
Phi2=w2i-Shi;
Phi3=w3i-Shi;
X=[transpose(Phi1) transpose(Phi2) transpose(Phi3)];
Y=double(X);
 
C=Y*transpose(Y);
[V,D]= eigs(C);
 
V(:,1); % 1st eigen vector
V(:,2); % 2nd eigen vector
V(:,2); % 3rd eigen vector etc
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Eigen face
B=V(:,1);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,1)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%Eigen face
B=V(:,2);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,2)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
%Eigen face
B=V(:,3);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,3)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Eigen face
B=V(:,4);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,4)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Eigen face
B=V(:,5);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,5)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%Eigen face
B=V(:,6);
m=1;
k=1;
for i = 1:N
for j = m:m+N-1;
R(i,k) = Shi(j)*B(j)*64;
k=k+1;
end
m=m+N;
k=1;
end
 
for i = 1:N
for j = 1:N;
image(i,j) = R(i,j);
end
end
subplot(2,3,6)
imshow(image)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 


