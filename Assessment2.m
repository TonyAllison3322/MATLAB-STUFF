%Assessment 2, tasks are as follows :
%Find the centre of the circular feature in pixels.
%Calculate the radius of the feature in pixels.
%Calculate the area of the feature in pixels.


%Sensor information : width 80 pixels, height 60 pixels (4.93mm and 3.7mm)

[x] = imread('T1.png'); %declaring the image for the information to be read from.
imshow(x);
BW = imbinarize(x); %Using Binarize function as im2bw doesn't work very well.
imshow(BW);

L = bwlabel(BW);
s = regionprops(BW, x,{'Centroid', 'Area'}); %Reads the binary image and counts all postive pixels
stats = regionprops('table', BW, 'Centroid', 'Area'); % Displays the Area and centre in a graph

Area = stats.Area;
Centre
stats.Centroid;

%To find the radius use the area of a circle formula pi*r^2
% Radius = sqrt(Area/pi)

X = Area/pi;

Radius = sqrt(X);

%FOV Algorithim diameter of total viewable area 

%x and y cordinate of centre square rooted to give the
%diagonal distance

CentreX = Centre(1);
CentreY = Centre(2);

AngularDisplacement = sqrt(CentreX^2 + CentreY^2)
ANG = AngularDisplacement;
DistanceFromObject = 1
D = DistanceFromObject;
LD = 2*D*tan(ANG/2);
LinearDistance = LD + (-LD*2)


