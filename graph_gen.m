spiral_updates = [];

random_updates = []; 

snake_updates = [];

snake_turns = []; 

random_turns = [];

spiral_turns = [];

x_axis_percentage = (1:95)';

plot(x_axis_percentage, snake_updates,x_axis_percentage, random_updates,x_axis_percentage, spiral_updates);
%plot(x_axis_percentage, snake_turns, x_axis_percentage, random_turns, x_axis_percentage, spiral_turns);

hold on
legend('snaking','random', 'spiral')
legend('boxoff')
title('Snaking, Random & Spiral - 2000 runs average')
ylabel('Number of turns')
xlabel('% of area coverage')
hold off;
