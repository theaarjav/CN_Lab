clc;
clear all;
close all;
adj_matrix = [
0 6 0 0 0;
0 0 3 0 -2;
0 0 0 4 0;
-1 0 0 0 2;
0 0 0 1 0 ];
[start_node, ~] = find(adj_matrix);
[start_node_dist, start_node_prev] = bellman_ford(adj_matrix,start_node);
display(start_node_dist);
display(start_node_prev);
function [dist,prev] = bellman_ford(adj_matrix, start_node)
     num_nodes = size(adj_matrix, 1);
     dist = Inf(1, num_nodes);
     prev = zeros(1, num_nodes);
     dist(start_node) = 0;
     for i = 1:num_nodes-1
         for j = 1:num_nodes
             for k = 1:num_nodes
                 if adj_matrix(j,k) ~= 0
                     if dist(j) + adj_matrix(j,k) < dist(k)
                         dist(k) = dist(j) + adj_matrix(j,k);
                         prev(k) = j;
                     end
                 end
             end
         end
     end
     for j = 1:num_nodes
         for k = 1:num_nodes
             if adj_matrix(j,k) ~= 0
                 if dist(j) + adj_matrix(j,k) < dist(k)
                    error('Negative cycle detected');
                 end
             end
         end
     end
end
