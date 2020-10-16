function [w,b] = perceptron(dataset, eit )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    n = size(dataset);
    w = random('Normal',2.5,1,1,n(2)-1);

    b = random('Normal',2.5,5);
    exist = 50;
    w = zeros(1,n(2)-1);
    b = 0;
    while exist>=1
        exist = 0;
      
        for i=1:n(1)
              w*dataset(i,1:n(2)-1)'+b
              dataset(i,3)
            if dataset(i,3)==1&&w*dataset(i,1:n(2)-1)'+b<=0
                exist = exist +1;
                w = w +  eit * dataset(i,3) *  dataset(i,1:n(2)-1);
                b = b + eit * dataset(i,3);
                continue;
            end
            if dataset(i,3)==-1&& w*dataset(i,1:n(2)-1)'+b>=0
                exist = exist+1;
                w = w +  eit * dataset(i,3) *  dataset(i,1:n(2)-1);
                b = b + eit * dataset(i,3);
            end
        end
    end

end

