spiral_updates = [];

%%% RANDOM 
random_updates_e = readFile('runs/random_updates_e.txt');
random_updates_s = readFile('runs/random_updates_s.txt');

random_turns_e = readFile('runs/random_turns_e.txt');
random_turns_s = readFile('runs/random_turns_s.txt');

%%% SNAKING 
snaking_updates_e = readFile('runs/snaking_updates_e.txt');
snaking_updates_s = readFile('runs/snaking_updates_s.txt');

snaking_turns_e = readFile('runs/snaking_turns_e.txt');
snaking_turns_s = readFile('runs/snaking_turns_s.txt');



snake_updates = [];

snake_turns = []; 

random_turns = [];

spiral_turns = [];

x = (1:94)';



%plot(x_axis_percentage, snake_updates,x_axis_percentage, random_updates,x_axis_percentage, spiral_updates);
%plot(x_axis_percentage, snake_turns, x_axis_percentage, random_turns, x_axis_percentage, spiral_turns);

hold on; 


plot(x,random_turns_e,'b--','DisplayName','Random Elongated Room')
plot(x,random_turns_s,'b','DisplayName','Random Square Room')

plot(x,snaking_turns_e,'r--','DisplayName','Snaking Elongated Room')
plot(x,snaking_turns_s,'r','DisplayName','Snaking Square Room')

hold off

legend(gca,'show','location','northwest')

%legend('snaking','random', 'spiral')
%legend('boxoff')
%title('Snaking, Random & Spiral - 2000 runs average')
%ylabel('Number of turns')
%xlabel('% of area coverage')
%hold off;
