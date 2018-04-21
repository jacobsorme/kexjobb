spiral_updates = [];


%%% RANDOM 
file = fopen('runs/random_updates_e.txt','r');
random_updates_e = fscanf(file,'%f'); 
fclose(file); 

file = fopen('runs/random_updates_s.txt','r');
random_updates_s = fscanf(file,'%f'); 
fclose(file); 


%%% SNAKING 
file = fopen('runs/snaking_updates_e.txt','r');
snaking_updates_e = fscanf(file,'%f'); 
fclose(file); 

file = fopen('runs/snaking_updates_s.txt','r');
snaking_updates_s = fscanf(file,'%f'); 
fclose(file); 


snake_updates = [];

snake_turns = []; 

random_turns = [];

spiral_turns = [];

x = (1:95)';

file = fopen('runs/test.txt','r');
A = fscanf(file,'%f'); 
fclose(file); 

%plot(x_axis_percentage, snake_updates,x_axis_percentage, random_updates,x_axis_percentage, spiral_updates);
%plot(x_axis_percentage, snake_turns, x_axis_percentage, random_turns, x_axis_percentage, spiral_turns);

hold on; 

plot(x,random_updates_e,'b--','DisplayName','Random Elongated Room')


plot(x,random_updates_s,'b','DisplayName','Random Square Room')

plot(x,snaking_updates_e,'r--','DisplayName','Snaking Elongated Room')
plot(x,snaking_updates_s,'r','DisplayName','Snaking Square Room')

hold off

legend(gca,'show','location','northwest')

%legend('snaking','random', 'spiral')
%legend('boxoff')
%title('Snaking, Random & Spiral - 2000 runs average')
%ylabel('Number of turns')
%xlabel('% of area coverage')
%hold off;
