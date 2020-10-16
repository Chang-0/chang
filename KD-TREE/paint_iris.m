load('iris.mat')
color = zeros(150,3);
zeros()
for i=1:150
    if iris(i,5) ==1
        color(i,:) =[0 1 1] ;
    else
        color(i,:) = [1 0 1];
        iris(i,5) = -1;
    end
    
end
dataset = iris(1:100,:)


% for i=1:12
%     for j = i+1:12
%         scatter(Wine(:,i),Wine(:,j),25,Wine(:,13),'filled');
%         str = sprintf('%d  %d',[i j]);
%         h =gcf;
%         set(h,'Name',str)
%         pause(1)
%        
%     end
% end
% scatter(Wine(:,5),Wine(:,8),25,Wine(:,13),'filled');
% str = sprintf('%d  %d',[i j]);
% h =gcf
% set(h,'Name',str)
% hold on;
% tic
%  [w, b] = perceptron(iris(1:100,[1 2 5]),0.5);
%  x =4:0.01:8;
%  y =  -(w(1)*x+b)/w(2);
%  plot(x,y)
root = create_kdtree(dataset,1);
count = 0;
scatter(iris(1:100,1),iris(1:100,2),25,color(1:100,:),'+');
hold on
for i=101:150
    [p l] = search_kdtree(root,iris(i,:));
    if p.val(5)== iris(i,5)
        c = 1;
        if iris(i,5) == 1
             scatter(iris(i,1),iris(i,2),25,[0 1 1],'s');
                hold on;
        else
             scatter(iris(i,1),iris(i,2),25,[1 0 1],'s');
            hold on;
        end
        count  = count + 1;
       
    end
    
end

correct_rate = count/50



