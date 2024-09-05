L = [2;3;4];

% Workspace Points
WS_points = zeros(0,0);
P = zeros(3,1);
P(3) = 0;
range = linspace(-(L(1) + L(2) + L(3)),L(1) + L(2) + L(3));
[X,Y] = ndgrid(range);

% Position vector of {2} from ground frame
for i = 1:length(X)
  for j = 1:length(Y)
    P(1) = X(i,j);
    P(2) = Y(i,j);
    X2 = [P(1) - L(3)*cos(P(3));P(2) - L(2)*sin(P(3))];
    kappa = (X2(1)^2 + X2(2)^2 - L(1)^2 - L(2)^2)/2*L(1)*L(2);
        if(kappa >= -1 && kappa <= 1)
        % Appending to the workspace
        WS_points = cat(1,WS_points,[P(1) P(2)])
        end
  end
end
P = zeros(3,1);
P(3) = 0;
range = linspace(-(L(1) + L(2) + L(3)),L(1) + L(2) + L(3));
[X,Y] = ndgrid(range);

% Position vector of {2} from ground frame
for i = 1:length(X)
  for j = 1:length(Y)
    P(1) = X(i,j);
    P(2) = Y(i,j);
    X2 = [P(1) - L(3)*cos(P(3));P(2) - L(3)*sin(P(3))];
    kappa = (X2(1)^2 + X2(2)^2 - L(1)^2 - L(2)^2)/2*L(1)*L(2);
        if(kappa >= -1 && kappa <= 1)
        % Appending to the workspace
        WS_points = cat(1,WS_points,[P(1) P(2)]);
        end
  end
end
plot(WS_points(:,1), WS_points(:,2),'bo','LineWidth',1.5)
grid on; grid minor;
ylim([-(L(1) + L(2) + L(3))-1;L(1) + L(2) + L(3)+1 ])
xlim([-(L(1) + L(2) + L(3))-1;L(1) + L(2) + L(3)+1 ])
axis equal
xlabel('X-Axis(m)')
ylabel('Y-Axis(m)')
