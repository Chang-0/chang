function [a] = create_kdtree(dataset,type,parent)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
[nums, dimension] = size(dataset);
if nums==0
    return
end
if nargin == 2
    parent = 1;
end
if nums==1
    a = treenode(dataset);
    return;
end
sortrows(dataset,type);
i = floor(nums/2+1);
node_val = dataset(i,:);
a = treenode(node_val);
a.parent = parent;
a.type = type;
if type ==1
    type = 2;
else 
    type = 1;
end
k1 =dataset(1:i-1,:);
k2 = dataset(i:nums,:)
a.left = create_kdtree(k1,type,a);
a.right = create_kdtree(k2,type,a);


end

