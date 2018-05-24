
%%% RANDOM 
random_updates_e = readFile('runs/random/random_updates_e.txt');
random_updates_s = readFile('runs/random/random_updates_s.txt');
random_upd_s_sd = readFile('runs/random/deviation_random_updates_s.txt');
random_upd_e_sd = readFile('runs/random/deviation_random_updates_e.txt');

random_turns_e = readFile('runs/random/random_turns_e.txt');
random_turns_s = readFile('runs/random/random_turns_s.txt');
random_trn_s_sd = readFile('runs/random/deviation_random_turns_s.txt');
random_trn_e_sd = readFile('runs/random/deviation_random_turns_e.txt');

%%% SNAKING 
snaking_updates_e = readFile('runs/snaking/snaking_updates_e.txt');
snaking_updates_s = readFile('runs/snaking/snaking_updates_s.txt');
snaking_upd_s_sd = readFile('runs/snaking/deviation_snaking_updates_s.txt'); 
snaking_upd_e_sd = readFile('runs/snaking/deviation_snaking_updates_e.txt'); 


snaking_turns_e = readFile('runs/snaking/snaking_turns_e.txt');
snaking_turns_s = readFile('runs/snaking/snaking_turns_s.txt');
snaking_trn_s_sd = readFile('runs/snaking/deviation_snaking_turns_s.txt');
snaking_trn_e_sd = readFile('runs/snaking/deviation_snaking_turns_e.txt');

%%% SPIRAL 
spiral_updates_s = readFile('runs/spiral/spiral_updates_s.txt');
spiral_updates_e = readFile('runs/spiral/spiral_updates_e.txt');
spiral_upd_s_sd = readFile('runs/spiral/deviation_spiral_updates_s.txt'); 
spiral_upd_e_sd = readFile('runs/spiral/deviation_spiral_updates_e.txt'); 



spiral_turns_e = readFile('runs/spiral/spiral_turns_e.txt');
spiral_turns_s = readFile('runs/spiral/spiral_turns_s.txt');
spiral_trn_s_sd = readFile('runs/spiral/deviation_spiral_turns_s.txt');
spiral_trn_e_sd = readFile('runs/spiral/deviation_spiral_turns_e.txt');

%%% NOTE!!! LENGTH 94 HERE FOR TURNS, 95 FOR UPDATES
x = (1:95)';

hold on; 
%%% UPDATES 
% plot(x,random_updates_e,'b--','DisplayName','Random Elongated Room')
%plot(x,random_updates_s,'b','DisplayName','Random Square Room')
%fillPlot(random_updates_s,random_upd_s_sd,x,'b'); 
% 
%plot(x,snaking_updates_e,'r--','DisplayName','Snaking Elongated Room')
%plot(x,snaking_updates_s,'r','DisplayName','Snaking Square Room');
%fillPlot(snaking_updates_s,snaking_upd_s_sd,x,'r'); 

% plot(x,spiral_updates_e,'g--','DisplayName','Spiral Elongated Room')
%plot(x,spiral_updates_s,'g','DisplayName','Spiral Square Room')
%fillPlot(spiral_updates_s,spiral_upd_s_sd,x,'g');

%%% TURNS 
%plot(x,random_turns_e,'b--','DisplayName','Random Elongated Room')
%fillPlot(random_turns_e,random_trn_e_sd,x,'b'); 

plot(x,random_turns_s,'b','DisplayName','Random Square Room')
fillPlot(random_turns_s,random_trn_s_sd,x,'b'); 


%plot(x,snaking_turns_e,'r--','DisplayName','Snaking Elongated Room')
%fillPlot(snaking_turns_e,snaking_trn_e_sd,x,'r');
plot(x,snaking_turns_s,'r','DisplayName','Snaking Square Room'); 
fillPlot(snaking_turns_s,snaking_trn_s_sd,x,'r'); 

%plot(x,spiral_turns_e,'g--','DisplayName','Spiral Elongated Room')
%fillPlot(spiral_turns_e,spiral_trn_e_sd,x,'g'); 

plot(x,spiral_turns_s,'g','DisplayName','Spiral Square Room')
fillPlot(spiral_turns_s,spiral_trn_s_sd,x,'g'); 

%hold off

legend(gca,'show','location','northwest')

%legend('DisplayName','Snaking Square Room')
legend('boxoff')
title('Snaking, Spiral & Random - Turns 2000 runs average')
ylabel('Turns')
xlabel('% of area coverage')
hold off;

axis([0 100 0 250])

% x = 1 : 20;
% list = [1,2,3,4,3,2,4,5,6,7,6,5,4,3,2,4,5,6,7,8];
% 
% f = @(x) list(x); 
% 
% sdPlus = f(x)+50;
% sdMinus = f(x)-50;
% 
% 
% plot(x,f(x)); 
% hold on; 
% 
% area = [sdPlus,fliplr(sdMinus)-100]; 
% fill([x,fliplr(x)],[list(x)+50,fliplr(list(x)-50)],'g'); 
% alpha(0.3); 
