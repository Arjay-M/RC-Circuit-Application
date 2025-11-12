%RC Circuit application
%Define some constants
RC = 0.2;
vi = 2;
va = 10;
% Use ode 45 to solve the differnce equation
%solve for voltage after 0.25s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.25],vi);
n = length(V); %returns the length of the largest array dimension in the input V
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))

[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.5],vi);
n = length(V); 
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))

[t,V] = ode45(@(t,V) (va-V)/RC, [0 1],vi);
n = length(V); 
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))

%logical comparison
near8V = V>7.9 & V<8.1;
time8V = t(near8V);

%report outputs
fprintf("It will take %.2f seconds for the voltage to reach 8 volts",time8V)
ylim([0 10])



