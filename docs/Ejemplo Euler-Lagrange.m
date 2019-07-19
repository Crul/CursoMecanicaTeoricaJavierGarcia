clear
clc
cla

% % Video
% video = VideoWriter('video.avi');
% video.Quality = 100;
% open(video);

dt = 0.01;
r = 1;
g = 10;
m = 1;
M = 3;

x = 0;
v = 0;
a = 0;
w = 3;
theta = 0;% pi/2 - 0.1;

for k=1:500
    v = -(m/(m+M))*r*w*cos(theta);
    alfa = -(a/r)*cos(theta)-(g/r)*sin(theta);
    w = w + alfa * dt;
    theta = theta + w*dt + 0.5*alfa * dt^2;
    a = (-(m/(m+M))*r*w*cos(theta) - v)/dt;
    x = x + v*dt + 0.5*alfa*dt^2;

    x1 = x;
    y1 = 0;
    x2 = x + r*sin(theta);
    y2 = -r*cos(theta);

    viscircles([x2 y2],0.05,'Color','black')
    xlim([-2 2])
    ylim([-2 2])
    axis square
    line([-10 10],[0 0],'Color','red')
    line([0 0],[-0.03 0.03],'Color','blue')
    line([x1 x2],[y1 y2],'Color','blue')
    pause(0.00001)

% frame = getframe(gcf);
% writeVideo(video,frame);

    line([x1 x2],[y1 y2],'Color','white')
    viscircles([x2 y2],0.05,'Color','white')

end

% close(video);
