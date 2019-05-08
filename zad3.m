M=imread('fruit.bmp');
M2 = zeros(256);
%M3 = zeros(256);
%poziome F = [0,0,0;0,0,0;0,1,0];
F = [0,0,0;0,0,1;0,0,0];%pionowe
n = sum(F);
normal = n(1)+n(2)+n(3);
s = size(M);
 
M2 = conv2(M,F,'same')/normal;
 
M2= minus(uint8(M2),M);

figure('name','cola orginal');
imshow(M,[0,255])
figure('name','ten nasz');
imshow(M2,[])

