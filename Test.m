%  testSandbox
% Use this repository for mucking around and testing git
h = animatedline;
axis([0,4*pi,-2,1])

x = linspace(0,4*pi,3000);
y = sin(x);
for k = 1:length(x)
    addpoints(h,x(k),y(k));
    drawnow
end