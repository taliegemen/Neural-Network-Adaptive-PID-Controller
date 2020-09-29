clc; close all;
%0.5 0.75
%Plot Code
t = (0:1e-3:10)';
plot(t,out.reference,'b','LineWidth',2)
hold on
plot(t,out.normalpid,'r','LineWidth',2)
hold on
plot(t,out.adapid,'--','Color','green','LineWidth',2)
legend('Reference','PID','Proposed Adaptive PID'),
xlabel('time(s)')
ylabel('Pitch Angle (rad)')
format shortE
goodnessOfFit(out.normalpid,out.reference,'MSE')
goodnessOfFit(out.adapid,out.reference,'MSE')
%step mse 5.086, 3.239 x 10-4
%step iae 0.04309 , 0.02095
%adapid = 0.25% overshoot, 0.48s settling 0.1a 0.8b
%pid = 1.29s settling, 18.6% overshoot
%sine mse 4.2312 , 1.2325 x10-3
%sine iae 0.5857 , 0.3169