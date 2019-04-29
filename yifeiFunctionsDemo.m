%Create some time
t = 0:1000000; t=t';

%Set interesting frequencies
TDay= 86400;  %Daily
TT = 1000;    %Turntable


%Simulate the effect of a daily temperature-gradient oscillation applied
%to a rotating differential temperature sensor
s = sin(2*pi/TDay*t) .* sin(2*pi/TT*t);


%Fit for sine and cosine oscillations at the turntable frequency
fits = sineFitterChunk(t,s,1/TT, 2*TT);
fitT = sineFitterChunk(t,t,1/TT, 2*TT); %(used just to extract the chunk times)


%Plot the results
plot(fitT(:,3), fits(:,1), fitT(:,3), fits(:,2))




