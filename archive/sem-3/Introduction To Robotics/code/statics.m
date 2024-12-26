wrenchVector = [0; 0; 0]; 

forceEndEffectorVector = [wrenchVector(1:2); 0];
momentEndEffectorVector = wrenchVector(3);

function f_back = calcForce(f_forward, weight)
    g = 9.81; 
    f_back = f_forward + [0; -weight * g]; 
end

function n_back = calcMoment(n_forward, weight, f_back, i, positionVec, positionVecCOM)
    g = 9.81;
    n_forVec = [0; 0; n_forward];
    n_back = n_forVec + cross(positionVec(:,i), f_back) - cross(positionVecCOM(:,i), [0; -weight * g; 0]);
    n_back = n_back(3);  % We only care about the z-component of the moment
end

n = 3;

aVec = [1; 1; 1];  % Lengths 
weight = [5; 5; 5];  % Weights 

thetaVec = zeros(n, 1);

positionVec = zeros(3, n);  % 3D vectors for the position of each joint
positionVecCOM = zeros(3, n);  % 3D vectors for the position of the center of mass of each link

theta = 0;
for i = 1:n
    theta += thetaVec(i);
    positionVec(:, i) = aVec(i) * [cos(theta); sin(theta); 0];
    positionVecCOM(:, i) = aVec(i)/2 * [cos(theta); sin(theta); 0];  
end

forceVector = zeros(2*(n+1), 1);  
forceVector(2*(n+1)-1:2*(n+1)) = forceEndEffectorVector(1:2);

momentVector = zeros(n, 1);  
momentVector(n) = momentEndEffectorVector;  

for i = n:-1:1
    forceVector(2*(i)-1:2*(i)) = calcForce(forceVector(2*(i+1)-1:2*(i+1)), weight(i));
    momentVector(i) = calcMoment(momentVector(i+1), weight(i), forceVector(2*(i)-1:2*(i)), i, positionVec, positionVecCOM);
end

function f = getForce(current, previous, forceVector)
    f = forceVector(2*(previous)-1:2*(previous));
end

% Function to retrieve the moment at a specific joint
function m = getMoment(current, momentVector)
    m = momentVector(current);
end
