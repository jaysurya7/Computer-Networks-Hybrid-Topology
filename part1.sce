clc;
clear;
close;

scf(0);
clf();

n = 25;

x = [ 7.00 6.12 4.00 1.88 1.00 1.88 4.00 6.12 7.50 9.00 8.56 7.50 6.44 6.00 6.44 7.50 8.56 1.00 2.29 3.57 4.86 6.14 7.43 8.71 10.00 ];

y = [ 6.00 8.12 9.00 8.12 6.00 3.88 3.00 3.88 4.50 4.50 5.56 6.00 5.56 4.50 3.44 3.00 3.44 1.00 1.00 1.00 1.00 1.00 1.00 1.00 1.00 ];

edges = [ ...
  1 2; 2 3; 3 4; 4 5; 5 6; 6 7; 7 8; 8 1;
  9 10; 9 11; 9 12; 9 13; 9 14; 9 15; 9 16; 9 17;
  18 19; 19 20; 20 21; 21 22; 22 23; 23 24; 24 25;
  4 9; 8 18; 17 22
];

for i = 1:size(edges, 1)
    plot([x(edges(i,1)) x(edges(i,2))], ...
         [y(edges(i,1)) y(edges(i,2))], 'k-', 'LineWidth', 2);
end

plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

for i = 1:n
    xstring(x(i)+0.1, y(i)+0.1, string(i), fontsize=12);
end

xtitle("Hybrid Network Topology (Ring + Star + Bus)", fontsize=16);
xgrid(1);
