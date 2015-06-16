% plotting exponential growth for given k: 

clear; 
clc; 


% define parameters in the model: 

p0 = 10;  % starting population
t = [0:1:10];  % 1 corresponds to one generation, plotting over 1000 years 
range = [-1:0.1:1]  % range of values to test k 
cc=hsv(12)
% define the function (want the parameter k to be a variable) 

exp = @(t,k) p0*exp(k*t);

%hold on
figure(1)
plot(t,exp(t,range(1)),t,exp(t,range(2)),t,exp(t,range(4)))
legend('k=-1','k=-0.5','k=0.5')
axis([0,5,-1,30])
xlabel('time in generations')
ylabel('population (people)')

figure(2)
hold all
for i = range,
    plot(t,exp(t,i))
    axis([0,5,-1,30])
end

hold off 




