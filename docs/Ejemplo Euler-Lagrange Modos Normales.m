clear; clc; cla;

A = 0; B = -4; C = 1 ; D = 0 ; F = 1 ; G = 0 ;
m = 150;
k = 3;
wo = sqrt(k/m);
a = 3;
xlim([-8 8])
ylim([-8 8])
axis square

for t=0:0.6:200
    x1 = (B+A*t)/sqrt(3);
    x1 = x1-C/sqrt(2)*cos(wo*t+D)+F*cos(sqrt(3)*wo*t+G);
    x2 = a +(B+A*t)/sqrt(3);
    x2 = x2-F*sqrt(2/3)*cos(sqrt(3)*wo*t+G);
    x3 = 2*a + (B+A*t)/sqrt(3);
    x3 = x3 + C/sqrt(2)*cos(wo*t+D)+F*cos(sqrt(3)*wo*t+G);

    line([x1 x2 x3],[0 0 0],'Color','blue')

    viscircles([x1 0],0.1,'Color','red');
    viscircles([x2 0],0.1,'Color','red');
    viscircles([x3 0],0.1,'Color','red');

    pause(0.001)

    viscircles([x1 0],0.1,'Color','white');
    viscircles([x2 0],0.1,'Color','white');
    viscircles([x3 0],0.1,'Color','white');

    line([x1 x2 x3],[0 0 0],'Color','white')

end
