M=imread('fruit.bmp');
%M2 = zeros(256);
%M3 = zeros(256);
F = [1,1,1;1,30,1;1,1,1];
n = sum(F);
normal = n(1)+n(2)+n(3);
s = size(M);

M2 = conv2(M,F,'same')/normal;

figure('name','cola orginal');
imshow(M,[0,255])
figure('name','ten nasz');
imshow(M2,[])
figure('name','filter2');
M3 = filter2(F,M,'full');
imshow(M3,[])
figure('name','medlift');
M4 = medfilt2(M);
imshow(M4,[])