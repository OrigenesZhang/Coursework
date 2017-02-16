function plot_points_edges(fig_no, points, edge_vertices_no, color_code, marker_size)
marker_vertices={'o', 'v', '>', '<', 's', 'd', 'p', '+'};
figure(fig_no);
hold on;
for point_no=1:size(points,2)
    plot3(points(1, point_no), points(2, point_no), points(3, point_no), ...
    [color_code marker_vertices{point_no}], 'MarkerSize', marker_size);
end

for edge_no=1:size(edge_vertices_no, 1)
    current_points=edge_vertices_no(edge_no, :);
    plot3(points(1, current_points), points(2, current_points), points(3, current_points),...
    color_code);
end
xlabel('x'); ylabel('y'); zlabel('z');
axis equal;
view(3);
end
