function [nearst_point, nearst_length] = zero_contain(root,point)
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
    nearst_point  = root;
    nearst_length = pdist([root.val(1,1:2);point.val(1,1:2)])
    
    if strcmp(class(root.left,'treenode'))
        [p1 l1] = zero_contain(root.left,point)
        if l1<nearst_length
            nearst_length = l1;
            nearst_point = p1;
        end
    end
    
    if strcmp(class(root.right,'treenode'))
        [p1 l1] = zero_contain(root.right,point)
        if l1<nearst_length
            nearst_length = l1;
            nearst_point = p1;
        end
    end
    
end

