wrenchVector = [];
forceEndEffectorVector = [wrenchVector(1:2); 0];
momentEndEffectorVector = wrenchVector(3);
using syms;
function f_back= calcForce(f_forward, weight)
	f_back = f_forward + weight*-10; 
end

function n_back= calcMoment(n_forward, weight, f_back, i)
	n_forVec = [0;0;n_forward];
	n_back = n_forVec + cross(positionVec(i),f_back) - cross(positionVecCOM(i),-10*weight);
	n_back = n_back(3);
end

n = 3;
aVec = [];
weight = [];
thetaVec = zeros(n,1);

positionVec = zeros(n,1);
positionVecCOM = zeros(n,1);

for i = 1:n
	theta += thetaVec(i);
	positionVec(i) = aVec(i)*[cos(theta);sin(theta); 0];
	positionVecCOM(i) = -aVec(i)/2*[cos(theta);sin(theta); 0];
end

% defining the force vector
forceVector = zeros(2*(n+1),1);
forceVector(2*(n+1)-1:2*(n+1)) = forceEndEffectorVector;

% defining the moment vector
momentVector = zeros(n,1);
momentVector(n) = momentEndEffectorVector;

for i = n:1
	forceVector(2*(i)-1:2*(i)) = calcForce(forceVector(i,i+1),weight(i))
end


function getMoment(current,previous)
	momentVector(current)
end

function getForce(current, previous)
	return forceVector(2*(previous)+1:2*(new));
end
