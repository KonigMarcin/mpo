function [ M2 ] = obrot(M,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
s = size(M);
r = s(1);
c = s(2);

if x == 1 %pion

    for i = 0:r-1
       M2(i+1,:) = M(r-i,:); 
    end
    
    
elseif x ==0 % poziom
       
    for i = 0:c-1
        M2(:,i+1) = M(:,c-i); 
    end
 
end

end

