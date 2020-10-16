classdef treenode < handle
    properties
        val;
        left;
        right;
        root;
        parent;
        color = 0;
        type;
    end
    
    methods
        function obj = treenode(val,parent)
           if nargin ==0
               obj.val = 0;
               return
                
           end
           if nargin==1
            obj.val = val;
            return;
           end
           
           if nargin ==2
                obj.val = val;
                obj.parent = parent;
           end
        end
    end
    
    
end