function [D] = avgArray (M)
%% form matrix A
A = [
-4 1 0 0 1 0 0 0;
1 -4 1 0 0 1 0 0;
0 1 -4 1 0 0 1 0;
0 0 1 -4 0 0 0 1;
1 0 0 0 -4 1 0 0;
0 1 0 0 1 -4 1 0;
0 0 1 0 0 1 -4 1;
0 0 0 1 0 0 1 -4
];
  
%% form the column matrix b
b = [
-(M(1,2)+M(2,1));
-M(1,3);
-M(1,4);
-(M(1,5)+M(2,6));
-(M(3,1)+M(4,2));
-M(4,3);
-M(4,4);
-(M(3,6)+M(4,5))
];
  
%% solve for x ie [x1;x2;x3;x4;x5;x6;x7;x8]
x = A\b;
  
%% insert the solution x into matrix D
D = M; % copy contents of M to D
x1x2x3x4 = x(1:4)'; % get x1,x2,x3,x4 as a row matrix
x5x5x7x8 = x(5:end)'; % get x5,x6,x7,x8 as a row matrix
D(2,2:5) = x1x2x3x4; % insert x1,x2,x3,x4 in their positions
D(3,2:5) = x5x5x7x8; % insert x5,x6,x7,x8 in their positions
end
