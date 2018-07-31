%%%Heyyyyy UUUUUU
%%Prob3.1
%Generate impulse function
[d,nd]=impseq(0,0,100);
%Generate impulse response
h = filter([1 2 1],[1 -0.5 0.25],d);
%Plotting impulse response
figure(1);
plot(nd,h);xlim([0,100]);ylim([-1,3]);title('Prob 1 : Impulse response of sys');
xlabel('n'); ylabel('h[n]'); grid on;
%%Prob3.2
disp('Sum of h[n] is');
disp(abs(sum(h)));

%% Make err

disp('If num of n = 10000,');
[d,nd]=impseq(0,0,10000);
h = filter([1 2 1],[1 -0.5 0.25],d);

disp('Sum of h[n] is also');
disp(abs(sum(h)));

disp('h[n] is absolutely summable')
disp('...and this system is LTI')
disp('So, this system is stable')
%%Prob3.3

n3 = 0:200; 
x3 = 5+3*cos(0.2*pi*n3)+4*sin(0.6*pi*n3); %Generate x[n]
y3 = filter([1 2 1],[1 -0.5 0.25],x3); %Output for given DE
%%%% Make err222
%Display Plot
figure(2);
plot(n3,y3);xlim([0,200]);;title('Prob 3 : Output of given signal');
xlabel('n'); ylabel('y[n]'); grid on;
