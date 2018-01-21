
%MATLAB code
N=64;
rgb = imread('td.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w1i(n) = I(i,j);
n=n+1;
end
end




%MATLAB code
rgb = imread('ta.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w2i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
rgb = imread('ht.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w3i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
rgb = imread('hd.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w4i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
rgb = imread('ha.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w5i(n) = I(i,j);
n=n+1;
end
end



%MATLAB code
rgb = imread('dt.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w6i(n) = I(i,j);
n=n+1;
end
end


%MATLAB code
rgb = imread('dh.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

n=1;
for i = 1:N
for j = 1:N
w7i(n) = I(i,j);
n=n+1;
end
end




%MATLAB code
rgb = imread('dd.jpg'); %read the image  
I = rgb2gray(rgb);%convert the RGB to gray scale image
I=imresize(I,[N N],'bilinear');

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
%MATLAB code
rgb = imread('hh.jpg'); %read the image  to be test
I = rgb2gray(rgb);%convert the RGB to gray scale image
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
z=transpose(y)-yhat;
z=abs(z);
s=0;
for i=1:length(z),
s=s+z(i);
end






