snake_updates = [];
snake_turns = [];

random_updates = [];
random_turns = [];

spiral_updates = [];
spiral_turns = [];

x_axis_percentage = (1:95)';

plot(x_axis_percentage, snake_updates, x_axis_percentage, random_updates);
hold on
legend('snaking','random')
legend('boxoff')
title('Snaking and random algorithms averaged over 20 runs')
ylabel('number of updates')
xlabel('% of area coverage')
