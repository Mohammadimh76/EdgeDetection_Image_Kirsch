clear; clc; close all

bw4=imread('siahosefid.bmp');

figure(1)
imshow(bw4)
t=1200 ;
bw5=double(bw4);
[m,n]=size(bw5);
g=zeros(m,n); 
for i=2:m-1
  for j=2:n-1
       d1 =(5*bw5(i-1,j-1)+5*bw5(i-1,j)+5*bw5(i-1,j+1)-3*bw5(i,j-1)-3*bw5(i,j+1)-3*bw5(i+1,j-1)-3*bw5(i+1,j)-3*bw5(i+1,j+1))^2;
       d2 =((-3)*bw5(i-1,j-1)+5*bw5(i-1,j)+5*bw5(i-1,j+1)-3*bw5(i,j-1)+5*bw5(i,j+1)-3*bw5(i+1,j-1)-3*bw5(i+1,j)-3*bw5(i+1,j+1))^2;
       d3 =((-3)*bw5(i-1,j-1)-3*bw5(i-1,j)+5*bw5(i-1,j+1)-3*bw5(i,j-1)+5*bw5(i,j+1)-3*bw5(i+1,j-1)-3*bw5(i+1,j)+5*bw5(i+1,j+1))^2; 
       d4 =((-3)*bw5(i-1,j-1)-3*bw5(i-1,j)-3*bw5(i-1,j+1)-3*bw5(i,j-1)+5*bw5(i,j+1)-3*bw5(i+1,j-1)+5*bw5(i+1,j)+5*bw5(i+1,j+1))^2; 
       d5 =((-3)*bw5(i-1,j-1)-3*bw5(i-1,j)-3*bw5(i-1,j+1)-3*bw5(i,j-1)-3*bw5(i,j+1)+5*bw5(i+1,j-1)+5*bw5(i+1,j)+5*bw5(i+1,j+1))^2; 
       d6 =((-3)*bw5(i-1,j-1)-3*bw5(i-1,j)-3*bw5(i-1,j+1)+5*bw5(i,j-1)-3*bw5(i,j+1)+5*bw5(i+1,j-1)+5*bw5(i+1,j)-3*bw5(i+1,j+1))^2; 
       d7 =(5*bw5(i-1,j-1)-3*bw5(i-1,j)-3*bw5(i-1,j+1)+5*bw5(i,j-1)-3*bw5(i,j+1)+5*bw5(i+1,j-1)-3*bw5(i+1,j)-3*bw5(i+1,j+1))^2; 
       d8 =(5*bw5(i-1,j-1)+5*bw5(i-1,j)-3*bw5(i-1,j+1)+5*bw5(i,j-1)-3*bw5(i,j+1)-3*bw5(i+1,j-1)-3*bw5(i+1,j)-3*bw5(i+1,j+1))^2; 
       g(i,j)=round(sqrt(d1+d2+d3+d4+d5+d6+d7+d8));
    end
end 
figure(2)
imshow(g,[])

for i=1:m
    for j=1:n
        if g(i,j)>t
            bw5(i,j)=255;
        else
            bw5(i,j)=0;
        end
    end
end

figure(3)
imshow(bw5)