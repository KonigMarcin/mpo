M=imread('fruit.bmp');
M2 = zeros(256);
%M3 = zeros(256);
%poziome F = [0,0,0;0,0,0;0,1,0];
F = [0,0,0;0,0,1;0,0,0];%pionowe
Hpoz = [1 2 1; 0 0 0 ; -1 -2 -1];
Hpio = [1 0 -1; 2 0 -2 ; 1 0 -1];
n = sum(F);
normal = n(1)+n(2)+n(3);
s = size(M);
 
M2 = conv2(M,F,'same')/normal;
M2= minus(uint8(M2),M);

M3 = conv2(M,Hpoz,'same');
M4 = conv2(M,Hpio,'same');
M5 = sqrt(M3^2 + M4^2);
figure('name','cola orginal');
imshow(M,[0,255])
figure('name','ten nasz');
imshow(M2,[])
figure('name','SOBEL');
imshow(M5,[])
