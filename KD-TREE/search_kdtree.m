function [nearest_point, nearest_length] = search_kdtree(root,point)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
    now = root;
    type = 1;
    nearest_point = root;
    nearest_length = pdist([root.val(1,1:2);point(1,1:2)])
    while 1
        last = now;
        if now.val(type)<=point(type)
            now = now.right;
        else
            now = now.left;
        end
        if strcmp(class(now),'treenode')
            if type==1
                type = 2;
            else
                type = 1;
            end
            continue;
        else
            nearst_point = last;
            break;
        end
    end
    
    now = nearst_point.parent;
    nearset_length = pdist([nearst_point.val(1,1:2);point(1,1:2)]);
    
    while now~=1
        if nearest_length < abs(point(now.type)-now.val(now.type))
            now = now.parent;
           
        else
            if point(now.type)<now.val(now.type)
                [p l] = zero_contain(now.right,point)
            else
                [p l] = zero_contain(now.left.point)
            end
            if l < nearset_length
                nearset_length = l;
                nearst_point = p;
                now = nearst_point.parent;
                continue;
            else
                now = now.parent;
                continue
            end
        end
        
    end
end

