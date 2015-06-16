% We will now write a scrpt which will take the system that we defined in
% odefun and solve it and plot the result. 

% to use ode 45 we (at least) need a vector of initial values and a vector
% time = [time(start) time(end)] 

initial = [0,1];   % initial conditions, needs to change if you have more that two equations 

time = [0 2];   % time domain ( the solver will dicretize appropriately

% call the function: 

[t,y] = ode45(@odefun,time,initial);

% We now have a two column array, y, which has the solutions to y(1) in the
% first column and y(2) in the second column. Each point cooresponds to a
% time value, t. 

%plot(t,y(:,1));  % select and plot y(1)
%plot(t,y(:,2));  % select and plot y(2)

% now plot a phase diagram plotting x, y 
figure(1);
plot(y(:,1),y(:,2));

figure(2);
plot(t, y(:,1))