function [w,b] = perceptron2(dataset,eit)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
n = size(dataset);
m = zeros(n(1),n(1));
for i = 1:n(1)
    for j = 1 :n(1)
       ans = dataset(i,1:n(2)-1) * dataset(j,1:n(2)-1)';
       m(i,j) = ans;
       m(j,i) = ans;
    end
end
a =zeros(1,n(1));
b = 0;
 exist = 50;
    while exist>=1
        exist = 0;
      
        for i=1:n(1)
           
            dataset(i,3);
            ans = 0 ;
            for j=1:n(1)
                ans = ans + a(j)*m(i,j) ;
            end
           ans = ans + b;
            if dataset(i,3)==1&&ans<=0
                exist = exist +1;
                a(i) = eit + a(i);
                b = b + eit;
                continue;
            end
            if dataset(i,3)==-1&& ans>=0
                exist = exist+1;
                a(i) = a(i) - eit;
                 b = b - eit;
            end
        end
    end
   
    
    
    w = a * dataset(:,1:2)
    
    
    

end

