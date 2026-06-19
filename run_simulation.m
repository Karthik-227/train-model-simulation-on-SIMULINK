M1 = 1;
M2 = 0.5;
Mu = 0.02;
g = 9.81;
k = 1;
F = 1;

sim('trainmodel')

figure
plot(out.velocity1.Data)
hold all
plot(ans.force.Data)
