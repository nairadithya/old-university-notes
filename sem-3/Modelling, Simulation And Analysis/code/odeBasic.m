global m b k;
m = 1;
b =  1; %Damping constant
k = 1; % Spring constant

tspan = [0 10];
IC = [0 0];

[time, X_state] = ode45(@f,tspan , IC);

function x_dot = f(t,X)
  global m b k
  u = sin(t);
  x_dot = [X(2);-(b/m)*X(2) - (k/m)*X(1) + (u/m)];
end
figure('units', 'normalized', 'outerposition', [0 0 1 1])
subplot(2,2,1)
grid on;
xlabel('Time(s)')
ylabel('Displacement')
plot(time, X_state(:,1))

subplot(2,2,3)
grid on;
xlabel('Time(s)')
ylabel('Velocity')
plot(time, X_state(:,2))


subplot(2,2,[2 4])
grid on;
xlabel('Displacement(m)')
ylabel('Velocity(m/s)')
plot(X_state(:,1), X_state(:,2))
