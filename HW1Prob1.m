data = csvread('HW1Prob1.csv');
x    = data(:,1);
y    = data(:,2);

np   = length(x);         %number of points (not used here, but good to know!)
G    = [x ones(size(x))]; %line fit: y = ax + b
Gg   = inv(G'*G)*G';

model   = Gg*y;           %2x1 vector, first value = a, second = b
predict = G*model;        %prediction of y at each x value


figure
hold on %allow new lines to be added later
plot(x,y,'.')
plot(x,predict,'r.')
legend('Data','Best fit line')
xlabel('x')
ylabel('y')
