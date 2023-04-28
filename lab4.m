clc;
clear all;
close all;
matrix = [
[0 7 7 9 Inf Inf Inf Inf],
[7 0 8 3 Inf Inf 1 Inf],
[7 8 0 Inf 1 Inf 4 Inf],
[9 3 Inf 0 Inf Inf Inf 6],
[Inf Inf 1 Inf 0 Inf 1 7],
[Inf Inf Inf Inf Inf 0 Inf 7],
[Inf 1 4 Inf 1 Inf 0 6],
[Inf Inf Inf 6 7 7 6 0]];
[path,cost]= dijkstra(matrix, 2);
display(path);
display(cost);
function [path,cost]= dijkstra(matrix, source)
     nodes=length(matrix);
     cost(1:nodes)=Inf;
     known(1:nodes)=0;
     path(1:nodes)=-1;
     cost(source)=0;
     curr=source;
     while sum(known)<nodes
         known(curr)=1;
         for i=1:nodes
             if (matrix(curr,i)~=Inf | matrix(curr,i)~=0) & (known(i)==0)
                 if(cost(i)>cost(curr)+matrix(curr,i))
                     cost(i)=matrix(curr,i)+cost(curr);
                     path(i)=curr;
                 end
             end
         end
         minValue=Inf; %minimum cost from non visited nodes
         minVertex=Inf; %vertex with minimum cost
         for i=1:nodes
             if known(i)==0
                 if cost(i)<minValue
                 minValue=cost(i);
                 minVertex=i;
                 end
             end
         end
         curr=minVertex;
    end
end